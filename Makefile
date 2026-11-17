CC=gcc
CFLAGS=-Wall -MMD

SOURCES=jpegrw.c mandel.c
EXECUTABLES=$(SOURCES:.c=)

all: $(EXECUTABLES)

%: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(EXECUTABLES) *.d *.o