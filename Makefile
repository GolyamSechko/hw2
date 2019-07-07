CC=g++
CFLAGS=-c -Wall

all: home_work libhw.a

home_work: main.o libhw.a
	$(CC) main.o libhw.a -o hw

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp -o main.o

hw.o: hw.cpp
	$(CC) $(CFLAGS) hw.cpp -o hw.o

libhw.a: hw.o
	ar -rcs libhw.a hw.o

clean:
	rm -rf *.o
