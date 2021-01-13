FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        gcc \
        make \
        libc6-dev \
        libssl-dev \
        ca-certificates \
        git \
        autoconf \
        automake \
        vim

WORKDIR /workspace
RUN git clone -b 2.8-stable https://github.com/ntop/n2n.git && cd n2n && ./autogen.sh && \
        ./configure --prefix=/usr && make install
