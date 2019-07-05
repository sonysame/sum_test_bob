all: sum

sum: sum.o main.o
	g++ -o sum main.o sum.o

sum.o: sum.cpp sum.h
	g++ -c -o sum.o sum.cpp

main.o: main.cpp sum.h sum.cpp
	g++ -c -o main.o main.cpp

clean:
	rm -f sum.o main.o
	rm -f sum
