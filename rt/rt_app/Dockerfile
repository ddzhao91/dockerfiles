FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    net-tools \
    python2.7 \
    python3.5 \
    iputils-ping \
    python-pip \
    python3-pip \
    openssh-server \
    build-essential \
    cmake \
    git \
    wget \
    zip \
    unzip && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /opt/
RUN wget --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/server-jre-8u191-linux-x64.tar.gz && \
    tar -zxvf server-jre-8u191-linux-x64.tar.gz && \
    rm -rf server-jre-8u191-linux-x64.tar.gz
    
