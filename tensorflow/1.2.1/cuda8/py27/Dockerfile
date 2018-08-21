FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

LABEL maintainer="Craig Citro <craigcitro@google.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        git \
        libnccl2=2.2.13-1+cuda8.0 \
        libnccl-dev=2.2.13-1+cuda8.0 \
        libcurl3-dev \
        libfreetype6-dev \
        libhdf5-serial-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python-dev \
        rsync \
        software-properties-common \
        unzip \
        zip \
        zlib1g-dev \
        wget \
        && \
    rm -rf /var/lib/apt/lists/* && \
    find /usr/local/cuda-8.0/lib64/ -type f -name 'lib*_static.a' -not -name 'libcudart_static.a' -delete && \
    rm /usr/lib/x86_64-linux-gnu/libcudnn_static_v6.a

# Link NCCL libray and header where the build script expects them.
RUN mkdir /usr/local/cuda-8.0/lib &&  \
    ln -s /usr/lib/x86_64-linux-gnu/libnccl.so.2 /usr/local/cuda/lib/libnccl.so.2 && \
    ln -s /usr/include/nccl.h /usr/local/cuda/include/nccl.h

RUN curl -fSsL -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN pip --no-cache-dir install \
        Pillow \
        h5py \
        ipykernel \
        jupyter \
        keras_applications==1.0.4 \
        keras_preprocessing==1.0.2 \
        matplotlib \
        mock \
        numpy==1.14.5 \
        scipy \
        sklearn \
        pandas \
        tensorflow-gpu=1.2.1
        && \
    python -m ipykernel.kernelspec

# RUN ln -s -f /usr/bin/python3 /usr/bin/python#

# Set up our notebook config.
COPY jupyter_notebook_config.py /root/.jupyter/

# Jupyter has issues with being run directly:
#   https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
COPY run_jupyter.sh /

WORKDIR /root

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888
