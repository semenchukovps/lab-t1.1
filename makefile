
all: main libhello.a libgoodbye.a
	gcc -o bin main.o -L. -lhello -lgoodbye 


main: main.c
	gcc -c main.c

libhello.a: libhello.o
	ar cr libhello.a libhello.o
	
	
libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o



libhello.o: 
	gcc -c libhello.c

libgoodbye.o: 
	gcc -c libgoodbye.c

libs: libhello.a libgoodbye.a
	
		
clean:
	rm -r *.o *.a bin
