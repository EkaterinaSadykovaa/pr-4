TARGETS = client server2
CC = gcc
CFLAGS = -Wall -Wextra -lm
SRCS = client.c server2.c
OBJS = $(SRCS:.c=.o)

all: $(TARGETS)

client: client.o
	$(CC) $< -o $@ $(CFLAGS)

server2: server2.o
	$(CC) $< -o $@ $(CFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGETS)



