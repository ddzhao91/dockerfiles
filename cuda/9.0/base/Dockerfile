#CUDA9.0 + cuDNN 7.2.1.38 + nccl 2.2.13
FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
		wget \
		net-tools \
		python2.7 \
		python3.5 \
		iputils-ping \
		python-pip \
		python3-pip \
		libnccl2=2.2.13-1+cuda9.0 && \
    rm -rf /var/lib/apt/lists/*
