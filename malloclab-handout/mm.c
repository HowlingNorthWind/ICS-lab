/*
 * mm.c
 *
 * 1800012818 刘竟择
 * 我实现了分离链表与最佳适配，最佳适配是我每次都在插入空闲链表时按大小顺序插入
 * 这样我搜索时第一次找到的块就是最佳块，但即使这样我的内存使用率依旧很低，
 * 用其他方法实现的链表分数也都很低,我一直也弄不懂为什么。
 * malloc搜索链表，如果能找到合适的块就放下，不然申请新的堆空间，再放置
 * free释放当前指针所指的块，将头尾部置0,然后看是否能与前后块合并
 * realloc改变原有的块大小，特殊情况特殊处理，然后分配size大小的空间，分配失败就输出错误
 * 如果size比原来的大就memcpy原来的整个块，不然只复制size大小，然后释放原来的指针
 * calloc将num*size的空间分配，并将其初始化
 * mm_checkheap，搜索整个空闲链表和堆，输出对应块的信息，并检查对齐，是否堆溢出之类的错误
 * 同时输出并检查对应的全局变量
 * malloc先搜索适配块，搜索不到就用extend_heap分配空间，放置用place函数放置，
 * place函数可能将剩余部分插入空闲链表
 * free先改变当前头尾部再用coalesce与前后块合并并调用insnode插入链表
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE       8       /* Word and header/footer size (bytes) */ 
#define DSIZE       16       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) 

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    


/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)                    

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

#define PRED(bp)  (*(char**)(bp))
#define SUCC(bp)  (*(char**)((char*)bp+WSIZE))

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */ 
static char *root = 0; 
static void *seglist[16];

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *coalesce(void *bp);
static int sz2in(size_t size);
static int in_heap(const void *p);
static int aligned(const void *p);
/* 
 * 初始化heap_listp全局变量,序言块，结尾块和root，同时请求堆空间 
 */
int mm_init(void) 
{
	
	for(int i=0;i<16;++i)
	{
		seglist[i]=NULL;
	}
   //初始化heap_listp全局变量,序言块，结尾块和root
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1) 
        return -1;
	
    PUT(heap_listp, 0);                          
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); 
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); 
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));    
	root= heap_listp + (4*WSIZE);
    heap_listp += (2*WSIZE);                     
   //请求堆空间 
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
    {    
	return -1;
	#ifdef DEBUG
	mm_checkheap(__LINE__);
	#endif
	}
    return 0;
}

/* 
 * 分配至少size字节大小，先找出为了对齐的块大小，然后搜索链表，如果能找到合适的块
 *就放下，不然申请新的堆空间，再放置，申请堆空间出错则调用checkheap输出错误
 */
void *malloc(size_t size) 
{
    size_t asize;     
    char *bp=NULL;      
    if (heap_listp == 0){
        mm_init();
    }
    //特殊情况处理
    if (size == 0)
        return NULL;
   //为了对齐算出分配块的总大小
    if (size <= DSIZE)                                          
        asize = 2*DSIZE;                                        
    else
       asize=ALIGN(size+DSIZE);
	//搜索空闲链表
	int st=sz2in(asize);
	int fl=0;
	for(int i=st;i<16;++i)
	{
		bp=seglist[i];
		while(bp!=NULL)
		{
			size_t tmpsz=GET_SIZE(HDRP(bp));
			if(tmpsz>=asize)
			{
				fl=1;
				break;
			}
			bp=SUCC(bp);
		}
		if(fl)break;
	}
   //找不到，申请新空间
    if (bp== NULL) {  
		if ((bp = extend_heap(MAX(asize, CHUNKSIZE) / WSIZE)) == NULL)
		{
			return(NULL);
			#ifdef DEBUG
			mm_checkheap(__LINE__);
			#endif
		}
    }
    //找到就放置
    place(bp, asize);                                 
    return bp;
} 

/* 
 * 释放当前指针所指的块，将头尾部置0,然后看是否能与前后块合并
 */ 
void free(void *bp)
{
    if (bp == 0) 
        return;
    size_t size = GET_SIZE(HDRP(bp));
	//将头尾部置0
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
	//是否能与前后块合并
    coalesce(bp);
}

/*
 * 改变原有的块大小，特殊情况特殊处理，然后分配size大小的空间，分配失败就输出错误
 * 如果size比原来的大就memcpy原来的整个块，不然只复制size大小，然后释放原来的指针
 */
void *realloc(void *ptr, size_t size)
{
    size_t oldsize;
    void *newptr;

    //特殊情况特殊处理
    if(size == 0) {
        mm_free(ptr);
        return 0;
    }

   //特殊情况特殊处理
    if(ptr == NULL) {
        return mm_malloc(size);
    }

    newptr = mm_malloc(size);

    //分配size大小的空间，分配失败就输出错误
    if(!newptr) {
	#ifdef DEBUG
	mm_checkheap(__LINE__);
	#endif
        return 0;
    }

    //如果size比原来的大就memcpy原来的整个块，不然只复制size
    oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);

    //释放原来的指针
    mm_free(ptr);

    return newptr;
}


/*
 * 将num*size的空间分配，并将其初始化
 *
 */
void* calloc(size_t num, size_t size) {
	//将num*size的空间分配
	void* newptr=malloc(num*size);
	//初始化
	memset(newptr, 0,num*size);
	return newptr;
}


/*
 *我在其他函数出错时调用mm_checkheap，搜索整个空闲链表和堆，
 *输出对应块的信息，并检查对齐，是否堆溢出之类的错误
 *同时输出并检查对应的全局变量
 */
void mm_checkheap(int lineno)
{
	//输出并检查对应的全局变量
	printf("lineno%d\n",lineno);
	printf("heap_listp:%p\n",heap_listp);
	printf("root:%p\n",root);
	printf("\n");
	//搜索整个空闲链表，输出对应块的信息，并检查对齐，是否堆溢出之类的错误
	printf("Free blocks:\n");
	int cntforfreeblock=0;
	for(int i=0;i<16;++i)
	{
		char* tmp=seglist[i];
		while(tmp!=NULL)
		{
			cntforfreeblock++;
			printf("free block num: %d\n",cntforfreeblock);
			printf("free block index:%d\n",i);
			printf("free block address: %p\n",tmp);
			printf("free block size: %d\n",(int)GET_SIZE(HDRP(tmp)));
			printf("free PRED:%p\n",PRED(tmp));
			printf("free SUCC:%p\n",SUCC(tmp));
			if(in_heap(tmp)==0)printf("Not in heap\n");
			if(aligned(tmp)==0)printf("Not aligned!!!\n");
			if(GET_ALLOC(HDRP(tmp))==1)printf("alloced block in free list\n");
			printf("\n");
			tmp=SUCC(tmp);
		}
	}
	printf("total free block num:%d\n",cntforfreeblock);
	//搜索整个堆，输出对应块的信息，并检查对齐，是否堆溢出之类的错误
	printf("\n");
	printf("all blocks:\n");
	char* tmp0=root;
	int cntforall=0;
	while(in_heap(tmp0))
	{
		cntforall++;
		printf("all block num: %d\n",cntforall);
		printf("all block address: %p\n",tmp0);
		printf("all block size: %d\n",(int)GET_SIZE(HDRP(tmp0)));
		printf("all block alloced: %d\n",(int)GET_ALLOC(HDRP(tmp0)));
		printf("PREV_BLKP: %p\n",PREV_BLKP(tmp0));
		printf("NEXT_BLKP: %p\n",NEXT_BLKP(tmp0));
		if(aligned(tmp0)==0)printf("Not aligned!!!\n");
		if(in_heap(tmp0)==0)printf("Not in heap\n");
		if(GET(HDRP(tmp0))!=GET(FTRP(tmp0)))printf("HDRP!=FTRP\n");
		printf("\n");
		tmp0=NEXT_BLKP(tmp0);
	}
	printf("total all block num:%d\n",cntforall);
}

/* 
 * 下面是一些辅助函数
 */
/*
 * 找到对应链表，>=4096是一组，其他以2的幂分类
 */
int sz2in(size_t size)
{
	//>=4096是一组
	if(size>=4096)
	{
		return 12;
	}
	//其他以2的幂分类
	int cnt=0;
	while(size>0)
	{
		cnt++;
		size>>=1;
	}
	return cnt;
}
/*
 * 找到对应链表并搜索，按前后有无块分类并设置指针
 */
static void insnode(void* bp)
{
	//找到对应链表并搜索
	size_t sz = GET_SIZE(HDRP(bp));
	int ind = sz2in(sz);
	void* tmp = seglist[ind];
	void* bef = NULL;
	int cnt = 0;
	while (tmp != NULL)
	{
		size_t tmpsz = GET_SIZE(HDRP(tmp));
		if (sz <= tmpsz)break;
		bef = tmp;
		tmp = SUCC(tmp);
		cnt++;
	}
	//按前后有无块分类并设置指针
	if (tmp == NULL && bef == NULL)
	{
		seglist[ind] = bp;
		SUCC(bp) = NULL;
		PRED(bp) = NULL;
	}
	else if (tmp == NULL && bef != NULL)
	{
		PRED(bp) = bef;
		SUCC(bp) = NULL;
		SUCC(bef) = bp;
	}
	else if (tmp != NULL && bef == NULL)
	{
		PRED(bp) = NULL;
		SUCC(bp) = tmp;
		PRED(tmp) = bp;
		seglist[ind] = bp;
	}
	else if (tmp != NULL && bef != NULL)
	{
		PRED(bp) = bef;
		SUCC(bef) = bp;
		SUCC(bp) = tmp;
		PRED(tmp) = bp;
	}
}
/*
 * 已经将块本身删除，只需设置前后的指针和当前链表的指针
 */
static void delnode(void* bp)
{
	//设置前后的指针和当前链表的指针
	size_t sz = GET_SIZE(HDRP(bp));
	int ind = sz2in(sz);
	if (SUCC(bp) == NULL && PRED(bp) == NULL)
	{
		seglist[ind] = NULL;
	}
	else if (SUCC(bp) == NULL && PRED(bp) != NULL)
	{
		SUCC(PRED(bp)) = NULL;
	}
	else if (SUCC(bp) != NULL && PRED(bp) == NULL)
	{
		PRED(SUCC(bp)) = NULL;
		seglist[ind] = SUCC(bp);
	}
	else if (SUCC(bp) != NULL && PRED(bp) != NULL)
	{
		SUCC(PRED(bp)) = SUCC(bp);
		PRED(SUCC(bp)) = PRED(bp);
	}
}


/* 
 * 申请堆空间，设置头尾部和结尾块，并看能否与前后块合并
 */
static void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;
    //申请堆空间
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
    {   
	return NULL;  
	#ifdef DEBUG
	mm_checkheap(__LINE__);
	#endif
	}                               
    //设置头尾部和结尾块
    PUT(HDRP(bp), PACK(size, 0));         
    PUT(FTRP(bp), PACK(size, 0));          
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); 
    //能否与前后块合并
    return coalesce(bp);                                          
}

/*
 * 看前后块的情况，决定是否能与前后块合并，然后将合并后的块插入链表
 */
static void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {            /* 前后不能合并 */

    }
    else if (prev_alloc && !next_alloc) {      /* 后面能合并，删除后块，合并*/
		delnode(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size,0));

    }
    else if (!prev_alloc && next_alloc) {      /*前面能合并，删除前块，合并 */
		delnode(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    else {                                     /* 前、后面能合并，删除前、后块，合并 */
		delnode(PREV_BLKP(bp));
		delnode(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +  GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
	//将合并后的块插入链表
	insnode(bp);
    return bp;
}

/* 
 * 如果当前块分割后比2*DSIZE大就将剩余块插入空闲链表
 * 否则将整个块分配
 */
static void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));   
	int alloc=GET_ALLOC(HDRP(bp));
	//删除将被放置的块
	if(alloc==0)
	{
		delnode(bp);	
	}
	else 
	{
		#ifdef DEBUG
		mm_checkheap(__LINE__);
		#endif
	}
	//如果当前块分割后比2*DSIZE大就将剩余块插入空闲链表
    if ((csize - asize) >= (2*DSIZE)) { 
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
		coalesce(bp);
    }
	//否则将整个块分配
    else { 
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}

/*
 * 
 * 判断指针是否在堆里面
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 *
 * 判断指针是否对齐
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

