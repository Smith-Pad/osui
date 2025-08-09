// main.c


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>

#include "osui_electron.h"                                                              

// function is global status bar
void GLOBAL_STATUS_BAR() 
{
        FILE *global_status_bar = fopen("hello-world.txt", "w");
        fprintf(global_status_bar, "hello world");        
}

// function is global navigation bar

void GLOBAL_NAVIGATION_BAR()
{
        FILE *global_navigation_bar = fopen("hello-world-0.txt", "a");
        fprintf(global_navigation_bar, "hello world"); 
}



int main() 
{
        GLOBAL_STATUS_BAR();
        GLOBAL_NAVIGATION_BAR();
}