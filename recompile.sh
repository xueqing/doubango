#/bin/sh

export PREFIX=/opt/webrtc2sip
./autogen.sh && ./configure --prefix=$PREFIX LDFLAGS='-ldl' LIBS='-ldl'
make clean && make
#sudo make install && cp -f ./config.xml $PREFIX/sbin/config.xml