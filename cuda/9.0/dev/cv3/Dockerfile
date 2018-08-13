FROM rt/cuda:8.0-9.0-cudnn7-nccl2-ubuntu16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        wget \
        libatlas-base-dev \
        libboost-all-dev \
        libgflags-dev \
        libgoogle-glog-dev \
        libhdf5-serial-dev \
        libleveldb-dev \
        liblmdb-dev \
        libprotobuf-dev \
        libsnappy-dev \
        protobuf-compiler \
        python3-dev \
        python3-pip \
        python3-setuptools \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libjasper-dev \
        libavformat-dev \
        libpq-dev&& \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
RUN pip3 install numpy protobuf scipy

WORKDIR /opt
ENV OPENCV_VERSION="3.4.1"
RUN wget https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip 
RUN unzip ${OPENCV_VERSION}.zip && rm -rf ${OPENCV_VERSION}.zip && \
    mkdir opencv-${OPENCV_VERSION}/cmake_binary && \
    cd /opt/opencv-${OPENCV_VERSION}/cmake_binary && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    make install -j"$(nproc)" && rm -rf /opt/opencv-${OPENCV_VERSION} 
