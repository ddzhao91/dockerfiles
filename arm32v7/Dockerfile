FROM ubuntu:18.04

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN dpkg --add-architecture armhf && \
	apt-get update && apt-get install -y --no-install-recommends \
	libc6:armhf \
	libstdc++6:armhf \
	libc6-dev:armhf \
	gcc-multilib-arm-linux-gnueabihf \
	binutils-arm-linux-gnueabihf \
	g++-multilib-arm-linux-gnueabihf \
	doxygen:armhf \
	transfig:armhf \
	transfig \
	imagemagick:armhf \
	gdb:armhf \
	make:armhf \
        protobuf-compiler:armhf \
        libprotoc-dev:armhf \
        python3 \
        python3-distutils:armhf \
        python3-setuptools:armhf \
        curl:armhf \
        git \
        wget \
        ssh \
	ca-certificates && \
    rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH="/usr/arm-linux-gnueabihf/lib:{LD_LIBRARY_PATH}"

RUN cd /usr/bin && ln -s arm-linux-gnueabihf-gcc gcc && ln -s arm-linux-gnueabihf-g++ g++ && \
	ln -s arm-linux-gnueabihf-ar ar && ln -s arm-linux-gnueabihf-as as && ln -s /usr/bin/python3 /usr/bin/python

RUN mkdir /workspace && cd /workspace && \
	wget --no-check-certificate https://cmake.org/files/v3.10/cmake-3.10.3.tar.gz && \
	tar -zxvf cmake-3.10.3.tar.gz && cd cmake-3.10.3 &&\
	./bootstrap --prefix=/usr --parallel=4 && make install -j4 && cd /workspace && rm -rf cmake*

RUN cd /workspace && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py 
RUN cd /workspace && python get-pip.py && rm get-pip.py 
RUN pip3 install pytest

WORKDIR /workspace
