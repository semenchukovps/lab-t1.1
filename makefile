all: main libhello.so libgoodbye.a
	gcc -L. -Wl,-rpath=. -o bin main.o -lhello -lgoodbye 
	

main: main.c
	gcc -c main.c

libhello.so: libhello.o
	gcc -shared -L. -o libhello.so libhello.o
	
	
libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o



libhello.o: 
	gcc -c libhello.c

libgoodbye.o: 
	gcc -c libgoodbye.c

libs: libhello.so libgoodbye.a
	
		
clean:
	rm -r *.o *.so *.a bin
