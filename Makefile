CC=gcc
CFLAGS=-Wall -Wextra

all: main

main: main.c
	$(CC) $(CFLAGS) -o main main.c

run:
	python3 index.py

clean:
	rm -f main

.PHONY: all run clean
