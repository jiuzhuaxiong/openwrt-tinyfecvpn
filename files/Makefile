SOURCES=`ls UDPspeeder/*.cpp UDPspeeder/lib/*.cpp|grep -v main.cpp|grep -v tunnel.cpp` main.cpp tun_dev.cpp tun_dev_client.cpp tun_dev_server.cpp

tinyfecvpn:
	$(CXX) ${CXXFLAGS} ${LDFLAGS} -I. -IUDPspeeder -IUDPspeeder/libev -DNOLIMIT -lrt -o $@ ${SOURCES}
