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
#define BUFFER_SIZE 99999																	


// This conditional statement ensures that osui.c is being complied on an 
// Apple plaform, if if is on another OS, that is a different issue, 
#ifndef __APPLE__
#include <immintrin.h>
#endif




// This is where the home screen route takes place
void homeScreen(char *callResponse) {

	// Set the Global UX Background
	#define HOMESCREEN_BACKGROUND_COLOR "gray"				

	// Set the Global UX Text Color		
	#define HOMESCREEN_TEXT_COLOR "white"			


	// Set the Global UX Font Face
	#define HOMESCREEN_TEXT_FACE "sans-serif"




	// Set the Homescreen UX Button Color				
	#define HOMESCREEN_BUTTON_COLOR "F5DBCB"			

	// Set the Homescreen UX Button Text Color			
	#define HOMESCREEN_BUTTON_TEXT_COLOR "black"		

	// Set the Homescreen UX Button Padding		
	#define HOMESCREEN_BUTTON_PADDING "16px 32px"

	// Set the Homescreen UX Button Radius			
	#define HOMESCREEN_BUTTON_RADIUS "10px"							
	

	// Set the Homescreen UX Top Header Color 
	#define HOMESCREEN_TOP_HEADER_COLOR "F5DBCB"

	// Set the Homescreen UX Top Header Text Color	
	#define HOMESCREEN_TOP_HEADER_TEXT_COLOR "black"


	// Set the Homescreen UX Top Header Padding
	#define HOMESCREEN_TOP_HEADER_PADDING "16px 32px"


	// Set the Homescreen UX Top Header Text Align Position
	#define HOMESCREEN_TOP_HEADER_TEXT_ALIGN "center"


	// Set the Homescreen UX Top Header Shadows 
	#define HOMESCREEN_TOP_HEADER_SHADOW_LEVEL "0.4px 5.7px 2.2px rgba(0, 0, 0, 0.076), 0.9px 13.6px 5.3px rgba(0, 0, 0, 0.109), 1.8px 25.7px 10px rgba(0, 0, 0, 0.135), 3.1px 45.8px 17.9px rgba(0, 0, 0, 0.161), 5.8px 85.6px 33.4px rgba(0, 0, 0, 0.194), 14px 205px 80px rgba(0, 0, 0, 0.27)"


	
	strcpy(callResponse, "HTTP/1.1 200 OK\n");
    strcat(callResponse, "Content-Type: text/html\n\n");
	strcat(callResponse, "<style>");
	strcat(callResponse, "body {");
	strcat(callResponse, "background-color:" HOMESCREEN_BACKGROUND_COLOR ";");
	strcat(callResponse, "color:" HOMESCREEN_TEXT_COLOR ";");
	strcat(callResponse, "font-family:" HOMESCREEN_TEXT_FACE ";");
	strcat(callResponse, "}");


	strcat(callResponse, ".button-in-middle-space {");
	strcat(callResponse, "text-align: left;");
	strcat(callResponse, "border: 200px solid transparent;");
	strcat(callResponse, "}");


	strcat(callResponse, ".widget-button-in-middle-container {");
	strcat(callResponse, "text-align: left;");
	strcat(callResponse, "border: 200px solid transparent;");
	strcat(callResponse, "}");

	strcat(callResponse, ".button {");
	strcat(callResponse, "background-color:" HOMESCREEN_BUTTON_COLOR ";");
	strcat(callResponse, "color:" HOMESCREEN_BUTTON_TEXT_COLOR ";");
	strcat(callResponse, "padding:" HOMESCREEN_BUTTON_PADDING ";");
	strcat(callResponse, "border-radius:" HOMESCREEN_BUTTON_RADIUS ";");
	strcat(callResponse, "text-decoration: " "none" ";");
	strcat(callResponse, "}");

	strcat(callResponse, ".global-top-header {");
	strcat(callResponse, "background-color:" HOMESCREEN_TOP_HEADER_COLOR ";");
	strcat(callResponse, "color:" HOMESCREEN_TOP_HEADER_TEXT_COLOR ";");
	strcat(callResponse, "text-align:" HOMESCREEN_TOP_HEADER_TEXT_ALIGN ";");
	strcat(callResponse, "padding:" HOMESCREEN_TOP_HEADER_PADDING ";");
	strcat(callResponse, "box-shadow:" HOMESCREEN_TOP_HEADER_SHADOW_LEVEL ";");
	strcat(callResponse, "}");

	strcat(callResponse, "</style>");


	// TODO: REMOVE THIS SECTION EVENTUALLY. DO IT LATER. 
	strcat(callResponse, "<div class=\"global-top-header\">");
	strcat(callResponse, "<h1> Smith-Pad </h1>");
	strcat(callResponse, "</div>");

	strcat(callResponse, "<div class=\"button-in-middle-space\"></div>");

	strcat(callResponse, "<a href=\"/settings_screen\" class=\"button\">hello world</a>");
	strcat(callResponse, "<a href=\"/settings_screen\" class=\"button\">hello world</a>");
	strcat(callResponse, "<a href=\"/settings_screen\" class=\"button\">hello world</a>");
}


// This is where the settings screen route takes place
void settingsScreen(char *callResponse) {
    strcpy(callResponse, "HTTP/1.1 200 OK\n");
    strcat(callResponse, "Content-Type: text/html\n\n");
    strcat(callResponse, "Settings Screen");
}


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



	// This is where this solves the memory leak issue when using ^C manually
	int memory_opt = 10;

	if (setsockopt(server_file_socket_descriptor, SOL_SOCKET, SO_REUSEADDR, &memory_opt, sizeof(memory_opt)) < 0) {
		perror("Memory Leak issue failed brah");
		exit(EXIT_FAILURE);
	}


	// This is where we initialize the address system, as well as initializing
	// the port call. Which is followed by the port definition.
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = INADDR_ANY;
	address.sin_port = htons(PORT);


	// Make an if statement where if the binding socket fails to communicate 
	// then it will fail. 
	if (bind(server_file_socket_descriptor, (struct sockaddr *)&address, sizeof(address)) < 0) {
		perror("Bind failed brah");
		exit(EXIT_FAILURE);
	}


	// Make an if statement where if the listening model fails to communicate
	// then it will fail. 
	if (listen(server_file_socket_descriptor, 3) < 0) {
		perror("Listening Model failed brah");
		exit(EXIT_FAILURE);
	}


	// While this is running, display the UX and the backend functions
	while(1) {

		// Make an if statement if the acception fails, then it should fail	
		if ((new_socket = accept(server_file_socket_descriptor, (struct sockaddr *)&address, (socklen_t *)&address_length)) < 0) {
			perror("Acception failed brah");
			exit(EXIT_FAILURE);
		}


		// If the listening model fails, then it will fail
		if (listen(server_file_socket_descriptor, 3) < 0) {
			perror("Listening failed brah");
			exit(EXIT_FAILURE);
		}
		

		// This is where we are able to read the socket
		read(new_socket, callBuffer, BUFFER_SIZE);	


		// This is where it prints out the buffer, just to make sure if it works
		printf("%s\n", callBuffer);


		/**********************************************************************************
		 * 	This is where the routing takes place. 
		 **********************************************************************************/

		// This is where it routes to the settings screen
		if (strstr(callBuffer, "GET /settings_screen") != NULL) {
			settingsScreen(callResponse);
		}
		

		// If there are no routes used in process, it will display the Home Screen UX by
		// default. 
		else {
			homeScreen(callResponse);
		}


		// This is where osui.c sends the new_socket data, the response data, and the length
		// of the response data. 
		send(new_socket, callResponse, strlen(callResponse), 0);
		
		// This is where we close the new socket from listening. Later on, maybe having an 
		// implementation, of making the socket run all the time, but maybe later on...
		close(new_socket);
	}

	close(server_file_socket_descriptor);
    printf("hello OSUI");
}
