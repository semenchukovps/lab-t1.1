all: main libs
	gcc -L. -Wl,-rpath=. -o bin main.o -lhello -lgoodbye 
	
main: main.c
	gcc -c main.c

libs: libsobj
	ar cr libgoodbye.a libgoodbye.o
	gcc -shared -L. -o libhello.so libhello.o

libsobj:
	gcc -c libhello.c
	gcc -c libgoodbye.c

clean:
	rm -r *.o *.so *.a bin
