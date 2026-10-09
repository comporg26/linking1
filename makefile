

all:    
	as -o math.o math.s
	gcc -O0 -o test.o -c test.c
	gcc -no-pie -z noexecstack -o test math.o test.o

clean:
	rm -f *.o
