#include"csapp.h"

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
	bufp=Mmap(NULL,size,PROT_READ,MAP_PRIVATE,fd,0);
	begintime=clock();
	for(int i=0;i<n;++i)
	{
		//printf("%c\n",*(bufp+i));
		int a=*(bufp+i);
	}
	endtime=clock();
	printf("%d\n",endtime-begintime);
	exit(0);
}
