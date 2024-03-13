#!/bin/bash

NAME="ipwnder32"
CC="gcc"
CPPFLAGS="-Iinclude"
CFLAGS="partial.c boot.c payload.c limera1n.c checkm8.c $NAME.c -g"
LDFLAGS="-lirecovery-1.0 -lcurl -lz"

echo "This is for compiling for linux without IOKit..."
echo "Use with caution!!!"
echo "If you get an error about libirecovery, you need to use synackuk's libirecovery!"

rm $NAME
$CC $CPPFLAGS $CFLAGS $LDFLAGS -o $NAME
