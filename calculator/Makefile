calculator: main.o addition.o subtraction.o multiplication.o division.o
	gcc main.o addition.o subtraction.o multiplication.o division.o -o calculator

main.o: main.c
	gcc -c main.c

addition.o: addition.c operations.h
	gcc -c addition.c

subtraction.o: subtraction.c operations.h
	gcc -c subtraction.c

multiplication.o: multiplication.c operations.h
	gcc -c multiplication.c

division.o: division.c operations.h
	gcc -c division.c

clean:
	rm *.o calculator
	gcc -c main.c
	gcc -c addition.c
	gcc -c subtraction.c
	gcc -c multiplication.c
	gcc -c division.c
	gcc main.o addition.o subtraction.o multiplication.o division.o -o calculator