CC=gcc
CFLAGS=-Wall -Wextra

all: main

main: main.c
	$(CC) $(CFLAGS) -o main main.c

clean:
	rm -f main
