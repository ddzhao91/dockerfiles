FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
ARG PYTHON_VERSION=3.5
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3.5 \
    python3.5-dev \
    libncurses5-dev \
    cmake \
    git \
    curl \
    vim \
    ca-certificates \
    libjpeg-dev \
    libpng-dev &&\
    rm -rf /var/lib/apt/lists/*
RUN pip3 install http://download.pytorch.org/whl/cu90/torch-0.4.1-cp35-cp35m-win_amd64.whl torchvision
