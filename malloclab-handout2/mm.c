/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
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



 /* If NEXT_FIT defined use next fit search, else use first-fit search 
 */
#define NEXT_FITx

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
#define PUTP(p, val)  (*(void**)(p) = (val))    




int mm_check(char *function);

static void *extend_heap(size_t dwords);

static void *coalesce(void *bp);

static void *find_fit(size_t size);

static void place(void *bp,size_t asize);

void insert_to_Emptylist(char *p);

void fix_linklist(char *p);

static char *heap_listp = NULL;

static double *root = NULL;






#define PREV_LINKNODE_RP(bp) ((char*)(bp))

#define NEXT_LINKNODE_RP(bp) ((char*)(bp)+WSIZE)

#define PRED_PTR(bp)   ((char*)bp)
#define SUCC_PTR(bp)  ((char*)bp+WSIZE)

#define PRED(bp)  (*(char**)(bp))
#define SUCC(bp)  (*(char**)(SUCC_PTR(bp)))

#define GETP(p) (*(void**)p)




static int allnum=0;












/* 
 * mm_init - Initialize the memory manager 
 */
int mm_init(void) 
{


/*
#ifdef DEBUG
	printf("i am in 0\n");

#endif*/













    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(6*WSIZE)) == (void *)-1) 
        return -1;
    PUT(heap_listp, 0);                          /* Alignment padding */
	PUT(heap_listp+(1*WSIZE),0);

    PUT(heap_listp+(2*WSIZE),0);
    PUT(heap_listp + (3*WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (4*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (5*WSIZE), PACK(0, 1));     /* Epilogue header */


	root = heap_listp + (1*WSIZE);
    heap_listp += (4*WSIZE);                     






	//printf("i am in init  in\n");













    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
        return -1;


	//printf("i am in init   END\n");
	
//mm_checkheap(0);
    return 0;
}

/* 
 * malloc - Allocate a block with at least size bytes of payload 
 */
void *malloc(size_t size) 
{



/*	printf("THE TOTAL ORDER NUM               %d\n",++allnum);
	printf("i am in malloc 1\n");
	printf("AAAAAAAAAAAA    %d\n",(int )size);
	mm_checkheap(allnum);

*/

    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      

  
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                          
        asize = 2*DSIZE;                                        
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE); 


/*
#ifdef DEBUG
	printf("i am in malloc 2\n");

printf("AAAAAAAAAAAA BBBBBBBBBB   %d\n",(int )asize);

#endif


*/






    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {  
        place(bp, asize);                  
        return bp;
    }

/*

	printf("i am in malloc 2   in\n");
	printf("BP%p\n",bp);
printf("\n");
                         
*/

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL;       


/*

#ifdef DEBUG
	printf("i am in malloc 2   END\n");
	printf("BP%p\n",bp);
printf("\n");

#endif           */                
    place(bp, asize);                                 
    return bp;
} 

/* 
 * free - Free a block 
 */
void free(void *bp)
{
/*
printf("THE TOTAL ORDER NUM               %d\n",++allnum);
printf("i am in free%p    sz%d\n",bp,GET_SIZE(HDRP(bp)));
mm_checkheap(allnum);
*/

    if (bp == 0) 
        return;

    size_t size = GET_SIZE(HDRP(bp));
    //if (heap_listp == 0){
 //       mm_init();
//    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
	SUCC(bp)=NULL;

   PRED(bp)=NULL;

	
    coalesce(bp);
}

/*
 * realloc - Naive implementation of realloc
 */
void *realloc(void *ptr, size_t size)
{
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        mm_free(ptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(ptr == NULL) {
        return mm_malloc(size);
    }


	
    newptr = mm_malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);

    /* Free the old block. */
    mm_free(ptr);

    return newptr;
}




/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;
/*
#ifdef DEBUG
	printf("i am in ex_heap 0\n");

	

#endif*/

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        


/*
#ifdef DEBUG
	printf("i am in ex_heap 2\n");

	printf("BP%p\n",bp);

#endif
*/


    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));         /* Free block header */   
    PUT(FTRP(bp), PACK(size, 0));         /* Free block footer */   
	 SUCC(bp)=NULL;

   PRED(bp)=NULL;
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 




/*
#ifdef DEBUG
	printf("i am in ex_heap 3\n");



#endif

*/



    /* Coalesce if the previous block was free */
    return coalesce(bp);                                          
}



/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));


/*
#ifdef DEBUG
	printf("i am in col 000000000000000  col\n");
	printf("col size %d\n",(int )size);
	printf("prev alloc%d\n",(int )prev_alloc);
	printf("next alloc%d\n",(int )next_alloc);
#endif*/







    if (prev_alloc && next_alloc) {            /* Case 1 */
      /* #ifdef DEBUG
	printf("i am in col case 1\n");



#endif*/
    }

    else if (prev_alloc && !next_alloc) {      /* Case 2 */

/*
#ifdef DEBUG
	printf("i am in col case 2\n");



#endif*/



        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));

	    fix_linklist(NEXT_BLKP(bp));

        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size,0));
    }

    else if (!prev_alloc && next_alloc) {      /* Case 3 */

/*
#ifdef DEBUG
	printf("i am in col case 3\n");



#endif*/



        size += GET_SIZE(HDRP(PREV_BLKP(bp)));

	    fix_linklist(PREV_BLKP(bp));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    else {                                     /* Case 4 */


/*
#ifdef DEBUG
	printf("i am in col case 4\n");



#endif
*/




        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(FTRP(NEXT_BLKP(bp)));

  fix_linklist(PREV_BLKP(bp));

        fix_linklist(NEXT_BLKP(bp));


        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
/*
#ifdef DEBUG
	printf("i am in col 111111\n");
	printf("BP%p\n",bp);
	printf("BPSZ%d\n",GET_SIZE(HDRP(bp)));


#endif
*/

    insert_to_Emptylist(bp);
/*
#ifdef DEBUG
	printf("i am in col END\n");
	printf("BP%p\n",bp);
	printf("BPSZ%d\n",GET_SIZE(HDRP(bp)));


#endif*/
    return bp;
}



inline void insert_to_Emptylist(char *p)

{

    /*p will be insert into the linklist ,LIFO*//*
#ifdef DEBUG
	printf("i am in ins 1\n");
	printf("nextp%p\n",GETP(root));
	printf("root %p\n",root);
#endif*/
    char *nextp = GETP(root);
/*
#ifdef DEBUG
	printf("i am in ins 2\n");
	printf("nextp%p\n",nextp);

	printf("root %p\n",root);
	printf("p %p\n",p);
#endif
*/



    if(nextp != NULL)

      PRED(nextp)=p;



   SUCC(p)=nextp;

//    PUT(PREV_LINKNODE_RP(p),root);

  SUCC(root)=p;
/*
#ifdef DEBUG
	printf("i am in ins 3\n");
	printf("nextp%p\n",GETP(root));
	printf("root %p\n",root);
	printf("p %p\n",p);
#endif*/
}

inline void fix_linklist(char *p)

{

    char *prevp = PRED(p);

    char *nextp = SUCC(p);

    if(prevp == NULL)

    {

        if(nextp != NULL)PRED(nextp)=0;

       SUCC(root)=nextp;

    }

    else

    {

        if(nextp != NULL)PRED(nextp)=prevp;

        SUCC(prevp)=nextp;

    }

   SUCC(p)=NULL;

   PRED(p)=NULL;

}






static void *find_fit(size_t size)

{

    /*first fit*/

/*#ifdef DEBUG
	printf("i am in findfit 0\n");
	printf("nextp%p\n",GETP(root));
	printf("root %p\n",root);
#endif
*/
   void*tmp = SUCC(root);
/*
#ifdef DEBUG
	printf("i am in findfit 2\n");
	printf("nextp%p\n",GETP(root));
	printf("root %p\n",root);
#endif*/
    while(tmp != NULL)

    {

/*
#ifdef DEBUG
	printf("i am in findfit 3\n");

	printf("Tmp%p\n",tmp);
	printf("GET_SIZE(HDRP(tmp))%d\n",GET_SIZE(HDRP(tmp)));
#endif*/

        if(GET_SIZE(HDRP(tmp))>=size) return tmp;

        tmp = SUCC(tmp);

    }

    return NULL;
/*

#ifdef DEBUG
	printf("i am in findfit 111\n");
	printf("nextp%p\n",GETP(root));
	printf("root %p\n",root);
#endif
*/
}




static void place(void *bp,size_t asize)

{

    size_t csize = GET_SIZE(HDRP(bp));

    fix_linklist(bp);/*remove from empty_list*/

    if((csize-asize)>=(2*DSIZE))

    {

        PUT(HDRP(bp),PACK(asize,1));

        PUT(FTRP(bp),PACK(asize,1));

        bp = NEXT_BLKP(bp);



        PUT(HDRP(bp),PACK(csize-asize,0));

        PUT(FTRP(bp),PACK(csize-asize,0));

       SUCC(bp)=NULL;

       PRED(bp)=NULL;

        coalesce(bp);

    }

    else

    {

        PUT(HDRP(bp),PACK(csize,1));

        PUT(FTRP(bp),PACK(csize,1));

    }

}


/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/* 
 * mm_checkheap - Check the heap for correctness. Helpful hint: You
 *                can call this function using mm_checkheap(__LINE__);
 *                to identify the line number of the call site.
 */
void mm_checkheap(int lineno)  
{ 
	  printf("---cur function:%d empty blocks:\n",lineno);

    char *tmpP = SUCC(root);

    int count_empty_block = 0;

    while(tmpP != NULL)

    {

        count_empty_block++;

        printf("address：%p size:%d \n",tmpP,GET_SIZE(HDRP(tmpP)));
	printf("GET%p\n",GETP(tmpP));
	printf("GET(SUCC_PTR(tmpP))%p\n",SUCC(tmpP));
        tmpP =SUCC(tmpP);

    }

    printf("empty_block num: %d\n",count_empty_block);
    lineno = lineno; /* keep gcc happy */
}

