/*刘竟择 1800012818
*这段程序要模拟一个cache在一系列不同指令下hit,miss,eviction的数目变化
*使用getopt读入命令行中的参数，如果有h参数或输入不合法就打印帮助内容
*之后为cache分配空间，逐一处理输入的指令，同一个地址的'L','S'操作对cache的影响相同，'M'操作相当于先'L'再'S'
*如果verbose位有标记则在处理过程中输出对应信息
*最后调用printSummary输出hits,misses,evictions的数目
*/
#include "cachelab.h"
#include<stdio.h>
#include<unistd.h>
#include<getopt.h>
#include<stdlib.h>
#include<errno.h>
#define INT_MAX 0x3f3f3f3f
typedef struct//定义cache中每一行的内容，有有效位和tag以及时间标记（方便进行LRU策略替换）
{
	int valid;
	int tag;
	int time;
} memorityLine;
typedef memorityLine *cacheLine;
typedef cacheLine  *cacheSet;
int hits=0;
int miss=0;
int evis=0;
void Opt(cacheLine Line,int tag,int E,int verbose)//模拟每一个操作对hits,misses，evictions的影响
{
	int time_now=0;
	int time_first=INT_MAX;
	int block_for_evi=0;
	int flag_valid=0;
	for(int i=0;i<E;++i)//查找LRU策略下将被替换的块，同时寻找最新的时间，便于标记新进来的块
	{
		if(Line[i].valid==0)flag_valid=1;
		if(Line[i].time<time_first)
		{
			time_first=Line[i].time;
			block_for_evi=i;
		}
		if(Line[i].time>time_now)
		time_now=Line[i].time;
	}
	time_now++;
	int flag_hit=0;
	int flag_hit_block=0;
	for(int i=0;i<E;++i)//判断是否命中
	{
		if(Line[i].valid!=0&&Line[i].tag==tag)
		{
			flag_hit=1;
			flag_hit_block=i;	
			break;
		}
	}
	if(flag_hit)//命中则hit数加一，更新时间标记，返回
	{
		hits++;
		if(verbose==1)
		{
			printf("hit ");
		}
		Line[flag_hit_block].time=time_now;
		return;
	}
	miss++;//不命中，miss数加一
	if(verbose)
	{
		printf("miss ");
	}
	if(flag_valid==0)//如果不存在无效的块，则驱逐，evicition增加
	{
		if(verbose==1)
		printf("eviction ");
		evis++;
	}
	Line[block_for_evi].valid=1;//将新的块读入
	Line[block_for_evi].tag=tag;
	Line[block_for_evi].time=time_now;
}
void cacheFree(cacheSet cache,int S,int E)//释放cache所分配的空间时，先逐一释放每一个Set的空间，再释放cache的空间
{
	for(int i=0;i<S;++i)
	{
		free(cache[i]);
	}
	free(cache);
	return;
}
void Print()//打印帮助内容
{
	printf("./csim: Missing required command line argument\n");
	printf("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n");
	printf("Options:");
	printf("  -h         Print this help message.\n");
	printf("  -v         Optional verbose flag.\n");
	printf("  -s <num>   Number of set index bits.\n");
	printf("  -E <num>   Number of lines per set.\n");
	printf("  -b <num>   Number of block offset bits.\n");
	printf("  -t <file>  Trace file.\n");
	printf("\n");
	printf("Examples:\n");
	printf("  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n");
	printf("  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
}
int main(int argc, char**argv)
{
	int S=-1;
	int s=-1;
	int E=-1;
	int b=-1;
	int verbose=0;
	char ch;
	FILE* trace=NULL;
	char* commandString="hvs:E:b:t:";
	while((ch=getopt(argc,argv,commandString))!=-1)//将命令行中的参数读入，有h参数或输入的命令行不合法时调用Print()输出帮助内容
	{
		switch(ch)
		{
			case 'h':
			{
				Print();
				exit(0);
			}
			case 'v':
			{
				verbose=1;
				break;
			}
			case 's':
			{
				if(atoi(optarg)<=0)
				{
					Print();
					exit(0);
				}
				s=atoi(optarg);
				S=(1<<(atoi(optarg)));
				break;
			}
			case 'E':
			{
				if(atoi(optarg)<=0)
				{
					Print();
					exit(0);
				}
				E=atoi(optarg);
				break;
			}
			case 'b':
			{
				if(atoi(optarg)<=0)
				{
					Print();
					exit(0);
				}
				b=atoi(optarg);
				break;
			}
			case 't':
			{
				if((trace=fopen(optarg,"r"))==NULL)
				{
					perror("Failed to open the file");
					exit(0);
				}
				break;
			}
			default:
			{
				Print();
				exit(0);
			}
		}
	}
	if(s==-1||E==-1||b==-1||trace==NULL)
	{
		Print();
		exit(0);
	}
	//分配cache的空间，同时为cache中每一set分配空间
	cacheSet cache;
	cache=calloc(S,sizeof(cacheLine));
	for(int i=0;i<S;++i)
	{
		cache[i]=calloc(E,sizeof(memorityLine));
	}
	//读入trace文件中的指令，进行cache访存的模拟
	long address;
	int other;
	while((fscanf(trace," %c %lx,%x",&ch,&address,&other))==3)
	{
		if(ch=='I')//'I'指令对cache无影响，不进行操作
		continue;
		else
		{
			int snum=(address>>b)&((1<<s)-1);//从地址中读取对应的set和tag
			int tag=address>>(b+s);
			switch(ch)
			{
				case 'L':
				case 'S'://'L','S'对cache影响相同，一起处理
				{
					if(verbose==1)//有verbose位则打印出相应内容
					{
						printf("%c %lx,%x ",ch,address,other);
					}
					Opt(cache[snum],tag,E,verbose);//调用Opt函数对每个操作进行处理
					if(verbose==1)
					{
						printf("\n");
					}
					break;
				}
				case 'M'://'M'相当于对同一个地址先进行'L',再进行'S'，同时有verbose位时只在前后输出一次
				{
					if(verbose==1)
					{
						printf("%c %lx,%x ",ch,address,other);
					}
					Opt(cache[snum],tag,E,verbose);
					Opt(cache[snum],tag,E,verbose);
					if(verbose==1)
					{
						printf("\n");
					}
					break;
				}
			}
		}
	}
	printSummary(hits,miss,evis);//用printSummary输出最后的总数
	cacheFree(cache,S,E);//用cacheFree函数释放内存
	return 0;
} 






















































