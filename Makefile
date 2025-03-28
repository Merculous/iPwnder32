CC=gcc
CPPFLAGS=-I.
CFLAGS=-g -Wall
LDFLAGS=-L/usr/local/lib -lusb-1.0 -lcrypto
NAME=ipwnder32

.SILENT: $NAME

$NAME: exploit.o usb.o payload_gen.o
	$(CC) $(CPPFLAGS) $(CFLAGS) *.o $(LDFLAGS) -o $(NAME)

clean:
	rm -f *.o $(NAME)
