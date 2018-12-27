CC=gcc
CFLAGS= -O3 -Wall -ffast-math
LDFLAGS= -lm

EXEC=Model.exec
SRC=$(wildcard *.c)
OBJ=$(patsubst %.c, %.o, $(SRC))

$(EXEC): $(OBJ)
	$(CC) -o $(EXEC) $(OBJ) $(LDFLAGS)
	mv *.o obj/
%.o:%.c
	$(CC) $(CFLAGS) -c $^ -o $@ 

clean:
	rm -f *.o $(EXEC)
