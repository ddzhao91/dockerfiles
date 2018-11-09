FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    net-tools \
    iputils-ping \
    python2.7 \
    python3.5 \
    python-pip \
    python3-pip \
    python-imaging \
    python-setuptools \
    python-mutagen \
    python-pam \
    python-dev \
    telnet \
    openssh-server \
    build-essential \
    cmake \
    git \
    wget \
    zip \
    unzip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/    
RUN git clone https://github.com/liftoff/GateOne.git
RUN cd GateOne && \
    python setup.py install

    

