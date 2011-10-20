AM_CXXFLAGS = -Wall

lib_LIBRARIES = libjbig2enc.a
libjbig2enc_a_SOURCES = jbig2enc.cc jbig2arith.cc jbig2arith.h jbig2sym.cc jbig2sym.h jbig2structs.h jbig2segments.h

bin_PROGRAMS = jbig2
jbig2_SOURCES = jbig2.cc
jbig2_LDADD = libjbig2enc.a

dist_bin_SCRIPTS = pdf.py
