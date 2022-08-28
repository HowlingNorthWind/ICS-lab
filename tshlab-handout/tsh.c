/* 
 * tsh - A tiny shell program with job control
 * 刘竟择 1800012818
 * <Put your name and login ID here>
 */
/*这个lab主要补充四个的内容，eval处理命令行，执行内置命令和运行本地文件，
*三个handler分别执行对应的信号处理程序
*同时我使用了一个全局变量flag_for_suspend来实现前台执行时waitfg的部分
*/
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <errno.h>

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF         0   /* undefined */
#define FG            1   /* running in foreground */
#define BG            2   /* running in background */
#define ST            3   /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Parsing states */
#define ST_NORMAL   0x0   /* next token is an argument */
#define ST_INFILE   0x1   /* next token is the input file */
#define ST_OUTFILE  0x2   /* next token is the output file */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t job_list[MAXJOBS]; /* The job list */

struct cmdline_tokens {
    int argc;               /* Number of arguments */
    char *argv[MAXARGS];    /* The arguments list */
    char *infile;           /* The input file */
    char *outfile;          /* The output file */
    enum builtins_t {       /* Indicates if argv[0] is a builtin command */
        BUILTIN_NONE,
        BUILTIN_QUIT,
        BUILTIN_JOBS,
        BUILTIN_BG,
        BUILTIN_FG} builtins;
};

/* End global variables */

/* Function prototypes */
void eval(char *cmdline);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, struct cmdline_tokens *tok); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *job_list);
int maxjid(struct job_t *job_list); 
int addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *job_list, pid_t pid); 
pid_t fgpid(struct job_t *job_list);
struct job_t *getjobpid(struct job_t *job_list, pid_t pid);
struct job_t *getjobjid(struct job_t *job_list, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *job_list, int output_fd);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
void sio_error(char s[]);

typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);


/*
 * main - The shell's main routine 
 */
int 
main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];    /* cmdline for fgets */
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
            break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
            break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
            break;
        default:
            usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */
    Signal(SIGTTIN, SIG_IGN);
    Signal(SIGTTOU, SIG_IGN);

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(job_list);

    /* Execute the shell's read/eval loop */
    while (1) {
	
        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");	
        if (feof(stdin)) { 
            /* End of file (ctrl-d) */
            printf ("\n");
            fflush(stdout);
            fflush(stderr);
            exit(0);
        }
        
        /* Remove the trailing newline */
        cmdline[strlen(cmdline)-1] = '\0';
        
        /* Evaluate the command line */
        eval(cmdline);
        fflush(stdout);
        fflush(stdout);
	
    } 
    
    exit(0); /* control never reaches here */
}

/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
 */
/*这个lab主要补充四个的内容，eval处理命令行，执行内置命令和运行本地文件，
*三个handler分别执行对应的信号处理程序
*同时我使用了一个全局变量flag_for_suspend来实现前台执行时waitfg的部分
*/
volatile sig_atomic_t flag_for_suspend;
/*eval函数主要用parseline将命令行处理成一个tok结构体
*如果有输入输出则将标准输入输出重定向到命令行提供的文件
*根据是否为内置命令以及内置命令的种类分别进行处理
*/
void 
eval(char *cmdline) 
{
    int bg;              /* should the job run in bg or fg? */
    struct cmdline_tokens tok;

    /* Parse command line */
    bg = parseline(cmdline, &tok); 
    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    //进行输入输出重定向
    int stdinfile;
    int secfile;   
    if(tok.infile!=NULL)//如果tok.infile不等于NULL,需要输入输出重定向，同时保存STDIN的原值
    {
	secfile=open(tok.infile,O_RDONLY,0);
	stdinfile=dup(STDIN_FILENO);
  	dup2(secfile,STDIN_FILENO);
    }
    int destfile;
    int stdoutfile;
    if(tok.outfile!=NULL)//作用与上边的部分相同
    {
	destfile=open(tok.outfile,O_WRONLY,0);
	stdoutfile=dup(STDOUT_FILENO);
  	dup2(destfile,STDOUT_FILENO);
    }

    //处理四种类型的指令
    if (tok.builtins==BUILTIN_QUIT)//QUIT指令直接退出
    {
		_exit(0);
    }
    else if(tok.builtins==BUILTIN_JOBS)//调用listjob函数，打印所有函数的工作状态
    {
		sigset_t mask,prev;
		sigemptyset(&mask);
		sigaddset(&mask,SIGCHLD);
		sigaddset(&mask,SIGINT);
		sigaddset(&mask,SIGTSTP);
		sigprocmask(SIG_BLOCK,&mask,&prev);
		listjobs(job_list,STDOUT_FILENO);
		sigprocmask(SIG_SETMASK,&prev,NULL);	
    }
    else if(tok.builtins==BUILTIN_BG)//将对应的job在后台运行，同时打印这个job
    {
   	if(tok.argv[1][0]=='%')
		{
			sigset_t mask,prev;
			sigemptyset(&mask);
			sigaddset(&mask,SIGCHLD);
			sigaddset(&mask,SIGINT);
			sigaddset(&mask,SIGTSTP);
			sigprocmask(SIG_BLOCK,&mask,&prev);	

			//读取jid通过jid寻找job
			int jid=atoi(tok.argv[1]+1);
			struct job_t *job;
			job=getjobjid(job_list,jid);
			int state=job->state;
	
			//输出信息
			sio_puts("[");
			sio_putl(job->jid);
			sio_puts("] (");
			sio_putl(job->pid);
			sio_puts(") ");
			sio_puts(job->cmdline);
			sio_puts("\n");
			job->state=BG;
	
			//如果之前的状态为ST，需要向其发送SIGCONT
			if(state==ST)
			{
				kill(-(job->pid),SIGCONT);
			}
			sigprocmask(SIG_SETMASK,&prev,NULL);	
		}
		else
		{
			sigset_t mask,prev;
			sigemptyset(&mask);
			sigaddset(&mask,SIGCHLD);
			sigaddset(&mask,SIGINT);
			sigaddset(&mask,SIGTSTP);
			sigprocmask(SIG_BLOCK,&mask,&prev);
	
			//读取pid通过pid寻找job
			int pid=atoi(tok.argv[1]);
			struct job_t *job;
			job=getjobpid(job_list,pid);
			int state=job->state;
	
			//输出信息
			sio_puts("[");
			sio_putl(job->jid);
			sio_puts("] (");
			sio_putl(job->pid);
			sio_puts(") ");
			sio_puts(job->cmdline);
			sio_puts("\n");
			job->state=BG;
	
			//如果之前的状态为ST，需要向其发送SIGCONT
			if(state==ST)
			{
				kill(-(job->pid),SIGCONT);
			}
			sigprocmask(SIG_SETMASK,&prev,NULL);	
		}
    }
    else if(tok.builtins==BUILTIN_FG)//将对应的job在前台运行，需要等待进程结束，不用打印这个job
    {
	sigset_t mask,prev;
	sigemptyset(&mask);
	sigaddset(&mask,SIGCHLD);
	sigaddset(&mask,SIGINT);
	sigaddset(&mask,SIGTSTP);
	sigprocmask(SIG_BLOCK,&mask,&prev);
	struct job_t *job;

	//获取job信息
  	if(tok.argv[1][0]=='%')//读取jid通过jid寻找job
	{
		int jid=atoi(tok.argv[1]+1);
		job=getjobjid(job_list,jid);
		
	}
	else
	{
		int pid=atoi(tok.argv[1]);//读取pid通过pid寻找job
		job=getjobpid(job_list,pid);
		
	}

	//按照状态来决定是否发送SIGCONT
	if(job->state==ST)//状态为ST,需要发送SIGCONT来使进程继续，之后需要waitfg来等待
	{
		job->state=FG;
		kill(-(job->pid),SIGCONT);
		flag_for_suspend=0;
		while(flag_for_suspend==0)
		{
			sigsuspend(&prev);
		}
		sigprocmask(SIG_SETMASK,&prev,NULL);			
	}
	else if(job->state==BG)//状态为BG,不用发信号，需要waitfg等待
	{
		job->state=FG;
		flag_for_suspend=0;
		while(flag_for_suspend==0)
		{
			sigsuspend(&prev);
		}
		sigprocmask(SIG_SETMASK,&prev,NULL);
	}
    }
    else if(tok.builtins==BUILTIN_NONE)//在子进程中运行argv[0]
    {
	sigset_t mask,prev;
	sigemptyset(&mask);
	sigaddset(&mask,SIGCHLD);
	sigaddset(&mask,SIGINT);
	sigaddset(&mask,SIGTSTP);
	sigprocmask(SIG_BLOCK,&mask,&prev);//按照文档的要求将这些信号堵塞住
	pid_t pid;
	if((pid=fork())==0)
	{
		sigprocmask(SIG_SETMASK,&prev,NULL);//按文档的要求运行这个函数
		if((setpgid(0,0))==-1)
		{
			sio_error("setpgid error\n");
		}
		if(execve(tok.argv[0],tok.argv,environ)==-1)
		{
			sio_error("execve error\n");
		}
		//关闭重定向文件，并结束进程
		if(tok.infile!=NULL)//如果infile不为NULL,需要关闭文件
		{
			close(secfile);
   		}
   		if(tok.outfile!=NULL)//作用同上
		{
			close(destfile);
 		}
		_exit(0);
	}
	else if(pid>0)
	{
		if(bg)//在后台运行需要打印job的内容
	   	{
			addjob(job_list,pid,BG,cmdline);
			struct job_t *job;
			job=getjobpid(job_list,pid);
			sio_puts("[");
			sio_putl(job->jid);
			sio_puts("] (");
			sio_putl(job->pid);
			sio_puts(") ");
			sio_puts(job->cmdline);
			sio_puts("\n");
			sigprocmask(SIG_SETMASK,&prev,NULL);
	  	}
		else //在前台运行通过sigsuspend来等待工作结束
		{
			addjob(job_list,pid,FG,cmdline);
			flag_for_suspend=0;
			while(flag_for_suspend==0)
			{
				sigsuspend(&prev);
			}
			sigprocmask(SIG_SETMASK,&prev,NULL);	
		}
	}
    }

    //关闭重定向文件
    if(tok.infile!=NULL)//如果infile不为NULL,需要关闭文件还原STDIN,STDOUT的原来状态
    {
	close(secfile);
	dup2(stdinfile,STDIN_FILENO);
    }
    if(tok.outfile!=NULL)//作用同上
    {
	close(destfile);
	dup2(stdoutfile,STDOUT_FILENO);
    }
    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Parameters:
 *   cmdline:  The command line, in the form:
 *
 *                command [arguments...] [< infile] [> oufile] [&]
 *
 *   tok:      Pointer to a cmdline_tokens structure. The elements of this
 *             structure will be populated with the parsed tokens. Characters 
 *             enclosed in single or double quotes are treated as a single
 *             argument. 
 * Returns:
 *   1:        if the user has requested a BG job
 *   0:        if the user has requested a FG job  
 *  -1:        if cmdline is incorrectly formatted
 * 
 * Note:       The string elements of tok (e.g., argv[], infile, outfile) 
 *             are statically allocated inside parseline() and will be 
 *             overwritten the next time this function is invoked.
 */
int 
parseline(const char *cmdline, struct cmdline_tokens *tok) 
{

    static char array[MAXLINE];          /* holds local copy of command line */
    const char delims[10] = " \t\r\n";   /* argument delimiters (white-space) */
    char *buf = array;                   /* ptr that traverses command line */
    char *next;                          /* ptr to the end of the current arg */
    char *endbuf;                        /* ptr to end of cmdline string */
    int is_bg;                           /* background job? */

    int parsing_state;                   /* indicates if the next token is the
                                            input or output file */

    if (cmdline == NULL) {
        (void) fprintf(stderr, "Error: command line is NULL\n");
        return -1;
    }

    (void) strncpy(buf, cmdline, MAXLINE);
    endbuf = buf + strlen(buf);

    tok->infile = NULL;
    tok->outfile = NULL;

    /* Build the argv list */
    parsing_state = ST_NORMAL;
    tok->argc = 0;

    while (buf < endbuf) {
        /* Skip the white-spaces */
        buf += strspn (buf, delims);
        if (buf >= endbuf) break;

        /* Check for I/O redirection specifiers */
        if (*buf == '<') {
            if (tok->infile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_INFILE;
            buf++;
            continue;
        }
        if (*buf == '>') {
            if (tok->outfile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_OUTFILE;
            buf ++;
            continue;
        }

        if (*buf == '\'' || *buf == '\"') {
            /* Detect quoted tokens */
            buf++;
            next = strchr (buf, *(buf-1));
        } else {
            /* Find next delimiter */
            next = buf + strcspn (buf, delims);
        }
        
        if (next == NULL) {
            /* Returned by strchr(); this means that the closing
               quote was not found. */
            (void) fprintf (stderr, "Error: unmatched %c.\n", *(buf-1));
            return -1;
        }

        /* Terminate the token */
        *next = '\0';

        /* Record the token as either the next argument or the i/o file */
        switch (parsing_state) {
        case ST_NORMAL:
            tok->argv[tok->argc++] = buf;
            break;
        case ST_INFILE:
            tok->infile = buf;
            break;
        case ST_OUTFILE:
            tok->outfile = buf;
            break;
        default:
            (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
            return -1;
        }
        parsing_state = ST_NORMAL;

        /* Check if argv is full */
        if (tok->argc >= MAXARGS-1) break;

        buf = next + 1;
    }

    if (parsing_state != ST_NORMAL) {
        (void) fprintf(stderr,
                       "Error: must provide file name for redirection\n");
        return -1;
    }

    /* The argument list must end with a NULL pointer */
    tok->argv[tok->argc] = NULL;

    if (tok->argc == 0)  /* ignore blank line */
        return 1;

    if (!strcmp(tok->argv[0], "quit")) {                 /* quit command */
        tok->builtins = BUILTIN_QUIT;
    } else if (!strcmp(tok->argv[0], "jobs")) {          /* jobs command */
        tok->builtins = BUILTIN_JOBS;
    } else if (!strcmp(tok->argv[0], "bg")) {            /* bg command */
        tok->builtins = BUILTIN_BG;
    } else if (!strcmp(tok->argv[0], "fg")) {            /* fg command */
        tok->builtins = BUILTIN_FG;
    } else {
        tok->builtins = BUILTIN_NONE;
    }

    /* Should the job run in the background? */
    if ((is_bg = (*tok->argv[tok->argc-1] == '&')) != 0)
        tok->argv[--tok->argc] = NULL;

    return is_bg;
}


/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU signal. The 
 *     handler reaps all available zombie children, but doesn't wait 
 *     for any other currently running children to terminate.  
 */
/*这个函数处理SIGCHLD信号，通过设置全局变量flag_for_suspend来进行waitfg的处理
*同时此时子进程状态有三种情况，自然退出只需删除job
*被SIGTSTP中止只需将job的状态设置为ST不需删除job
*被SIGINT中断需要输出对应数据以及删除job
*/
void 
sigchld_handler(int sig) 
{
    int reerrno=errno;
    pid_t pid;
    int state;
    while((pid=waitpid(-1,&state,WUNTRACED|WNOHANG))>0)
    {
	//设置flag_for_suspend使得waitfg部分退出循环
	sigset_t mask,prev;
	sigemptyset(&mask);
	sigaddset(&mask,SIGCHLD);
	sigaddset(&mask,SIGINT);
	sigaddset(&mask,SIGTSTP);
	if(pid==fgpid(job_list))
	{
		 flag_for_suspend=1;
	}
	sigprocmask(SIG_SETMASK,&prev,NULL);

	//按状态处理job
	if(WIFSIGNALED(state))//输出相应内容，同时删除job
	{
		int jid=pid2jid(pid);
		sio_puts("Job [");
		sio_putl(jid);
		sio_puts("] (");
		sio_putl(pid);
		sio_puts(") terminated by signal ");
		sio_putl(SIGINT);
		sio_puts("\n");
		deletejob(job_list,pid);
	}
	else if(WIFSTOPPED(state))//输出相应内容，将job的状态设置为ST,不删除
	{
		int jid=pid2jid(pid);
		struct job_t *job;
		job=getjobpid(job_list,pid);
		job->state=ST;
		sio_puts("Job [");
		sio_putl(jid);
		sio_puts("] (");
		sio_putl(pid);
		sio_puts(") stopped by signal ");
		sio_putl(SIGTSTP);
		sio_puts("\n");
	}
	else if(WIFEXITED(state))//结束退出就将对应job删除
	{
		deletejob(job_list,pid);
	}
	sigprocmask(SIG_BLOCK,&mask,&prev);
    }
    errno=reerrno;
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void 
sigint_handler(int sig) 
{
    int reerrno=errno;
    pid_t pid=fgpid(job_list);//按文档要求向pid所在的工作组发送信号
    if(pid!=0)
	kill(-pid,SIGINT);
    errno=reerrno;
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */

/*这个函数用来处理SIGTSTP信号
*寻找当前前台进程并向其所在组发送SIGTSTP信号
*/
void 
sigtstp_handler(int sig) 
{
    int reerrno=errno;
    pid_t pid=fgpid(job_list);//按文档要求向pid所在的工作组发送信号
    if(pid!=0)
	kill(-pid,SIGTSTP);
    errno=reerrno;
    return;
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
/*这个函数用来处理SIGINT信号
*寻找当前前台进程并向其所在组发送SIGINT信号
*/
void 
sigquit_handler(int sig) 
{
    sio_error("Terminating after receipt of SIGQUIT signal\n");
}



/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void 
clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void 
initjobs(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        clearjob(&job_list[i]);
}

/* maxjid - Returns largest allocated job ID */
int 
maxjid(struct job_t *job_list) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid > max)
            max = job_list[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int 
addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == 0) {
            job_list[i].pid = pid;
            job_list[i].state = state;
            job_list[i].jid = nextjid++;
            if (nextjid > MAXJOBS)
                nextjid = 1;
            strcpy(job_list[i].cmdline, cmdline);
            if(verbose){
            	  printf("Added job [%d] %d %s\n",
                       job_list[i].jid,
                       job_list[i].pid,
                       job_list[i].cmdline);
	//	 fflush(stdout);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int 
deletejob(struct job_t *job_list, pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == pid) {
            clearjob(&job_list[i]);
            nextjid = maxjid(job_list)+1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t 
fgpid(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].state == FG)
            return job_list[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t 
*getjobpid(struct job_t *job_list, pid_t pid) {
    int i;

    if (pid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid)
            return &job_list[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *job_list, int jid) 
{
    int i;

    if (jid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid == jid)
            return &job_list[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int 
pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid) {
            return job_list[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void 
listjobs(struct job_t *job_list, int output_fd) 
{
    int i;
    char buf[MAXLINE];

    for (i = 0; i < MAXJOBS; i++) {
        memset(buf, '\0', MAXLINE);
        if (job_list[i].pid != 0) {
            sprintf(buf, "[%d] (%d) ", job_list[i].jid, job_list[i].pid);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            switch (job_list[i].state) {
            case BG:
                sprintf(buf, "Running    ");
                break;
            case FG:
                sprintf(buf, "Foreground ");
                break;
            case ST:
                sprintf(buf, "Stopped    ");
                break;
            default:
                sprintf(buf, "listjobs: Internal error: job[%d].state=%d ",
                        i, job_list[i].state);
            }
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            sprintf(buf, "%s\n", job_list[i].cmdline);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
        }
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void 
usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void 
unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void 
app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/* Private sio_functions */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s)-1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
static void sio_ltoa(long v, char s[], int b) 
{
    int c, i = 0;
    
    do {  
        s[i++] = ((c = (v % b)) < 10)  ?  c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);
    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(char s[])
{
    int i = 0;

    while (s[i] != '\0')
        ++i;
    return i;
}

/* Public Sio functions */
ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];
    
    sio_ltoa(v, s, 10); /* Based on K&R itoa() */ 
    return sio_puts(s);
}

void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t 
*Signal(int signum, handler_t *handler) 
{
    struct sigaction action, old_action;

    action.sa_handler = handler;  
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}

