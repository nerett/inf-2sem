GCCFLAGS = #-static

ifndef FILENAME
	FILENAME = F
endif

all:
	nasm -felf64 $(FILENAME).asm -o $(FILENAME).o
	gcc $(GCCFLAGS) $(FILENAME).o -o $(FILENAME).out

run:
	./$(FILENAME).out
