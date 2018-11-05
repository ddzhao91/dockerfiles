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
    wget \
    ca-certificates \
    libjpeg-dev \
    libpng-dev && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py
RUN pip install --index-url https://pypi.tuna.tsinghua.edu.cn/simple tensorflow-gpu==1.9.0
