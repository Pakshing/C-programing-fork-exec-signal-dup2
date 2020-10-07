//
// Created by PakShing Kan on 10/3/20.
//
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <signal.h>

//system calls: fork, execvp, wait, open, dup2, signal, kill, and alarm.

pid_t pid;
int sig=-2;
void alarm_handler(int sig){
    sig = sig;
    kill(pid,SIGKILL);
    printf("killed with signal %d\n", sig);
}

//using execvp to execute sh.file
static int childProcess(int count,int timeout,char* argv[]){
    //generating the fileName
    count++;
    char testOutput[15] = "test_output.";
    char buffer[10];
    sprintf(buffer,"%d",count);
    strcat(testOutput, buffer);

    int fd = open(testOutput, O_RDWR | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    int stdoutCode = dup(STDOUT_FILENO);
    dup2(fd,1);
    signal(SIGALRM,alarm_handler);
    alarm(timeout);
    pid = fork();
    if(pid==0 ){ //child

        execvp(argv[3],&argv[3]);
        printf("could not exec %s\n", argv[3]);
        //printf("exit code 2\n");
        exit(2);
    }

    int status;
    waitpid(pid,&status,0);
    status = WIFEXITED(status)?WEXITSTATUS(status):255;
    if(status!=255)printf("exit code %d\n", status);
    fflush(stdout);

    //restore stdout
    dup2(stdoutCode, STDOUT_FILENO);
    close(fd);
    return status;
}

int main(int argc, char *argv[]) {
    int tries = 0;
    int timeout = 0;
    int count =0;
    //invoke withe the wrong number of arguments
    if (argc < 4) {
        printf("%s", "USAGE: ./unflake max_tries max_timeout test_command args...\n");
        printf("max_tries - must be greater than or equal to 1\n");
        printf("max_timeout - number of seconds greater than or equal to 1\n");
        exit(1);
    }
    tries = atoi(argv[1]);
    timeout = atoi(argv[2]);
    int statusCode=-1;


    while(count < tries && statusCode != 0){
        statusCode = childProcess(count,timeout,argv);
        count++;
    }

    printf("%d runs\n",count);

    char testOutput[15] = "test_output.";
    char buffer[10];
    char singleLine[150];
    sprintf(buffer,"%d",count);
    strcat(testOutput, buffer);


    FILE *fh = fopen(testOutput,"r");
    while (fgets(singleLine,50,fh)!=NULL){
        fputs(singleLine,stdout);
    }
    fclose(fh);

    return(statusCode);
    //printf("exit code %d\n",statusCode);


}

