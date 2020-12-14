FROM ubuntu:18.04

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        gcc \
        g++ \
        wget \
        ssh \
	adb \
        autoconf \
        automake \
        libtool \
        curl \
        make \
        unzip \
        libopencv-dev \
	python3-pip \
	ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

RUN apt-get update && apt-get install python3 python3-dev python3-setuptools -y

RUN pip3 install --upgrade pip pytest cmake==3.18.4.post1
RUN mkdir /workspace && cd /workspace && wget https://github.com/protocolbuffers/protobuf/archive/v3.11.0.tar.gz && tar -zxvf v3.11.0.tar.gz && cd protobuf-3.11.0 && ./autogen.sh && ./configure --prefix=/usr && make install -j$(nproc) && cd /workspace && rm -rf *
WORKDIR /workspace
