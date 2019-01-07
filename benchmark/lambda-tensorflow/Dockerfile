From nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
		wget \
		git \
		net-tools \
		iputils-ping \
		python-pip \
		python3-pip \
		python-setuptools \
		python3-setuptools

    
RUN pip3 install tensorflow-gpu==1.12.0 -i https://pypi.tuna.tsinghua.edu.cn/simple

RUN mkdir /workspace && cd /workspace && git clone https://github.com/lambdal/lambda-tensorflow-benchmark --recursive
