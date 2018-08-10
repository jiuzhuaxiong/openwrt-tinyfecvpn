SOURCES=`ls UDPspeeder/*.cpp UDPspeeder/lib/*.c|grep -v main.cpp|grep -v tunnel.cpp` main.cpp tun_dev.cpp

tinyfecvpn:
	$(CXX) ${CXXFLAGS} ${LDFLAGS} -I. -IUDPspeeder -DNOLIMIT -lrt -o $@ ${SOURCES}
