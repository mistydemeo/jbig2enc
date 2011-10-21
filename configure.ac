AC_INIT([jbig2enc], [0.28], [mistydemeo@gmail.com])
AM_INIT_AUTOMAKE([foreign no-dependencies -Wall -Werror])
AC_PROG_CXX
AC_PROG_RANLIB
AC_CHECK_LIB([lept], [findFileFormatStream], [], [
              echo "Error! Leptonica not detected."
              exit -1
              ])
AC_CHECK_LIB([tiff], [TIFFGetVersion], [], [
              echo "Error! libtiff not detected."
              exit -1
              ])
AC_CHECK_LIB([jpeg], [jpeg_set_defaults], [], [
              echo "Error! libjpeg not detected."
              exit -1
              ])
AC_CHECK_LIB([png], [png_get_io_ptr], [], [
              echo "Error! libpng not detected."
              exit -1
              ])
AC_CHECK_LIB([z], [zlibVersion], [], [
              echo "Error! zlib not detected."
              exit -1
              ])
AC_CHECK_LIB([m], [sqrt], [], [
              echo "Error! libm not detected."
              exit -1
              ])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
