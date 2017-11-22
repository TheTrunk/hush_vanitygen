LIBS=-lpcre -lcrypto -lm -lpthread
CFLAGS=-ggdb -O3 -Wall
OBJS=vanitygen.o pattern.o util.o
PROGS=vanitygen

most: vanitygen

all: $(PROGS)

vanitygen: vanitygen.o pattern.o util.o
	$(CC) $^ -o $@ $(CFLAGS) $(LIBS)

clean:
	rm -f $(OBJS) $(PROGS) $(TESTS)
