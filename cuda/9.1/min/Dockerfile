#CUDA9.1 runtime
FROM nvidia/cuda:9.1-base-ubuntu16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
		wget \
		net-tools \
		python2.7 \
		python3.5 \
		iputils-ping \
		python-pip \
		python3-pip && \
    rm -rf /var/lib/apt/lists/*
