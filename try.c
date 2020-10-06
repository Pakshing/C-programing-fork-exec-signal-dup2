//
// Created by PakShing Kan on 10/5/20.
//

#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
int main(int argc, char **argv){
    pid_t pid = fork();
    char **newargv = &argv[3];
    char *args[] = {argv[3],*newargv,NULL};
    if(pid ==0){
        //child
        execvp(args[0],args);
        printf("Failed");
        exit(0);
    }
    wait(NULL);

    return 0;
}
