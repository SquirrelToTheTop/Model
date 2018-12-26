CC=gcc
CFLAGS= -O3 -Wall -ffast-math
LDFALGS=

EXEC=Model.exec
SRC=$(wildcard *.c)
OBJ=$(patsubst %.c, %.o, $(SRC))

$(EXEC): $(OBJ)
	$(CC) -o $(EXEC) $(OBJ) $(LDFLAGS)

%.o:%.c
	$(CC) $(CFLAGS) -c $^ -o $@ 

clean:
	rm -f *.o $(EXEC)
