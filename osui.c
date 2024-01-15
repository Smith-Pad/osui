#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <time.h>
#include <fcntl.h>
#include <sys/stat.h>


// This is where we are able to define the port to run osui.c
#define PORT 4000


// This is where we are able to define the socket buffer performance 
#define BUFFER_SIZE 99999																	// This is where you adjust the performance size


// This conditional statement ensures that osui.c is being complied on an 
// Apple plaform, if if is on another OS, that is a different issue. 
#ifndef __APPLE__
#include <immintrin.h>
#endif



int main() 
{
	// This is where we create a server file socket descriptor. Basically, a file
	// socket descriptor allows the ability, to create a socket for a particular 
	// use case. (INT variable)	
	
	int server_file_socket_descriptor;

	// This is where we initialize the create a new socket, which allows the ability
	// to create socket upon compliation. Essentially, create and assign a new socket.
	int new_socket;



	// This is where we are able to create and initialize the socket address struct
	struct sockaddr_in address;


	// This is where we are able to set the address length of the socket address struct
	int address_length = sizeof(address);


	// This is where we can able to call the buffer size and the response size
	char callBuffer[BUFFER_SIZE] = {0};
	char callResponse[BUFFER_SIZE] = {0};


	// Make an if statement where if the server file descriptor fails to communicate, 
	// then make it fail

	if ((server_file_socket_descriptor = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
		perror("Socket creation failed brah");
		exit(EXIT_FAILURE);
	}


	
    printf("hello OSUI");
}
