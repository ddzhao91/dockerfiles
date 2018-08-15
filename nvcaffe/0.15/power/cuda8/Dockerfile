FROM nvidia/cuda-ppc64le:8.0-cudnn6-devel-ubuntu16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
vim \
net-tools \
python2.7 \
python3.5 \
iputils-ping \
python-pip \
python3-pip \
openssh-server \
build-essential \
cmake \
git \
wget \
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
libsnappy-dev \
protobuf-compiler \
python-dev \
python-numpy \
python-pip \
python-setuptools \
python-scipy && \
rm -rf /var/lib/apt/lists/*

ENV CAFFE_ROOT=/opt/caffe
WORKDIR $CAFFE_ROOT

RUN pip install --upgrade pip

RUN git clone https://github.com/NVIDIA/nccl.git --recursive && \
cd nccl && \
make PREFIX=/usr/local/cuda install && cp -ar /usr/local/cuda/lib/* /usr/local/cuda/lib64 && \
cd .. && rm -rf nccl


RUN git clone -b caffe-0.15 --depth 1 https://github.com/NVIDIA/caffe . 

RUN cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. && \
pip install protobuf && \
mkdir build && cd build 

RUN cd /opt/caffe/build && cmake -DUSE_CUDNN=1 -DUSE_NCCL=1 .. && \
make -j"$(nproc)"

ENV PYCAFFE_ROOT $CAFFE_ROOT/python
ENV PYTHONPATH $PYCAFFE_ROOT:$PYTHONPATH
ENV PATH $CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH
RUN echo "$CAFFE_ROOT/build/lib" >> /etc/ld.so.conf.d/caffe.conf && ldconfig
