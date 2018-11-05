FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
ARG PYTHON_VERSION=3.5
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3.5 \
    python3.5-dev \
    libncurses5-dev \
    cmake \
    wget \
    git \
    curl \
    vim \
    ca-certificates \
    libjpeg-dev \
    libpng-dev && \
    rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/python3.5 /usr/bin/python && wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py
RUN pip3 install http://download.pytorch.org/whl/cpu/torch-0.4.1-cp35-cp35m-linux_x86_64.whl torchvision
