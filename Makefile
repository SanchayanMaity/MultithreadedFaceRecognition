CC = ${HOME}/Toradex/oe-core/build/out-eglibc/sysroots/x86_64-linux/usr/bin/armv7ahf-vfp-neon-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-g++ 
INCLUDES = "-I${HOME}/Toradex/oe-core/build/out-eglibc/sysroots/colibri-t30/usr/include"
LIB_PATH = "-L${HOME}/Toradex/oe-core/build/out-eglibc/sysroots/colibri-t30/usr/lib"
LIBS = -lpthread -lopencv_highgui -lopencv_core -lopencv_imgproc -lopencv_objdetect -lopencv_contrib -lm 
CFLAGS = -O2 -g --sysroot=${HOME}/Toradex/oe-core/build/out-eglibc/sysroots/colibri-t30

all:
	${CC} ${CFLAGS} *.cpp ${INCLUDES} ${LIB_PATH} -o facedetection ${LIBS}

clean:
	rm -rf facedetection
