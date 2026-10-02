CC=gcc
CFLAGS=-g -fPIE

all: hello

hello: hello.c

clean:
	@rm -f hello
