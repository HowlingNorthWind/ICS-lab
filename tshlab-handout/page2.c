#include"csapp.h"
#include<time.h>
int main(int argc,char** argv)
{
	int begintime,endtime;
	struct stat stat;
	int fd;
	int n;
	scanf("%d",&n);
	fd=Open(argv[1],O_RDONLY,0);
	fstat(fd,&stat);
	int size=stat.st_size;
	char *bufp;
	int k=(1<<12);
	bufp=Mmap(NULL,size,PROT_READ,MAP_PRIVATE|MAP_ANON,fd,0);
	begintime=clock();
	for(int i=0;i<4;++i)
	{
		//printf("%c\n",*(bufp+i));
		endtime=clock();
		printf("%d\n",endtime-begintime);
		*(bufp+i)=1;
	}
	
	exit(0);
}
