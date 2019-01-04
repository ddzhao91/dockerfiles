From nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
		wget \
		net-tools \
		python2.7 \
		python3.5 \
		iputils-ping \
		python-pip \
		python3-pip
    
RUN pip3 install setuptools tensorflow-gpu==1.12.0 -i https://pypi.tuna.tsinghua.edu.cn/simple

RUN mkdir /workspace && cd /workspace

RUN git clone https://github.com/lambdal/lambda-tensorflow-benchmark --recursive
