#ifndef
	SRC = sub
#endif

all:
	as $(SRC).s -o $(SRC).o
	ld -lc $(SRC).o -o $(SRC).out

clean:
	rm *.o *.out
