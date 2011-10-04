CC=g++
# Use EXTRA to define extra lib and include paths.
# For example, a Homebrew Mac OS X install:
# EXTRA=-I`brew --prefix`/include/ -I/usr/X11/include -L`brew --prefix`/lib -L/usr/X11/lib ${LEPTINC}
CFLAGS=-Wall -I/usr/include -L/usr/lib -O3 ${EXTRA}

jbig2: libjbig2enc.a jbig2.cc
	$(CC) -o jbig2 jbig2.cc -L. -ljbig2enc -llept $(CFLAGS) -lpng -ljpeg -ltiff -lm -lz

libjbig2enc.a: jbig2enc.o jbig2arith.o jbig2sym.o
	ar -rcv libjbig2enc.a jbig2enc.o jbig2arith.o jbig2sym.o

jbig2enc.o: jbig2enc.cc jbig2arith.h jbig2sym.h jbig2structs.h jbig2segments.h
	$(CC) -c jbig2enc.cc $(CFLAGS)
jbig2arith.o: jbig2arith.cc jbig2arith.h
	$(CC) -c jbig2arith.cc $(CFLAGS)
jbig2sym.o: jbig2sym.cc jbig2arith.h
	$(CC) -c jbig2sym.cc -DUSE_EXT $(CFLAGS)

clean:
	rm -f *.o jbig2 libjbig2enc.a
