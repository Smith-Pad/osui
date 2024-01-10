#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <time.h>
#include <fcntl.h>
#include <sys/stat.h>

#define PORT 4000


// This conditional statement ensures that osui.c is being complied on an 
// Apple Platform
#ifndef __APPLE__
#include <immintrin.h>
#endif

int main() 
{
    printf("hello OSUI");
}