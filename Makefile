CC=gcc
CPPFLAGS=-I.
CFLAGS=-Wall -DDEBUG -g
LDFLAGS=-lusb-1.0 -lcrypto -lpthread
NAME=ipwnder32

.SILENT: $NAME

$NAME: exploit.o usb.o payload_gen.o
	$(CC) $(CPPFLAGS) $(CFLAGS) *.o $(LDFLAGS) -o $(NAME)

clean:
	rm -f *.o $(NAME)
