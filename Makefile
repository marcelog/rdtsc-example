CC=gcc
CFLAGS=-O -Wall 

all: clean
	@make rdtsc

rdtsc: a.o b.o
	@${CC} *.o -o rdtsc 

clean:
	@rm -rf *.o
	@rm -rf rdtsc
