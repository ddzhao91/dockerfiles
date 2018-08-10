#CUDA9.0 + cuDNN 7.2.1.38 + nccl 2.2.13
FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    wget \
		vim \
		wget \
		net-tools \
		iputils-ping \
    python-dev \
		python2.7 \
		python3.5 \
		python-pip \
		python3-pip \
    python-numpy \
    python-setuptools \
    python-scipy \
    protobuf-compiler \
		libnccl2=2.2.13-1+cuda9.0 \
    libturbojpeg \
    libopenblas-dev \
    libatlas-base-dev \
    libboost-all-dev \
    libgflags-dev \
    libgoogle-glog-dev \
    libhdf5-serial-dev \
    libleveldb-dev \
    liblmdb-dev \
    libopencv-dev \
    libprotobuf-dev \
    libsnappy-dev && \
    rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
RUN pip install Cython>=0.19.2 \
    numpy>=1.7.1 \
    scipy>=0.13.2 \
    scikit-image>=0.9.3 \
    matplotlib>=1.3.1 \
    ipython>=3.0.0 \
    h5py>=2.2.0 \
    leveldb>=0.191 \
    networkx>=1.8.1 \
    nose>=1.3.0 \
    pandas>=0.12.0 \
    python-dateutil>=1.4,<2 \
    protobuf>=2.5.0 \
    python-gflags>=2.0 \
    pyyaml>=3.10 \
    Pillow>=2.3.0 \
    six>=1.1.0
    pydot \
    protobuf
