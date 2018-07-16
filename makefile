
all: main libs
	gcc -o bin main.o -L. -lhello -lgoodbye 

main: main.c
	gcc -c main.c

libs: libsobj
	ar cr libhello.a libhello.o
	ar cr libgoodbye.a libgoodbye.o

libsobj:
	gcc -c libhello.c
	gcc -c libgoodbye.c
	
clean:
	rm -r *.o *.a bin
