FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
	gcc \
	libc6-dev \
	libssl-dev \
	ca-certificates \
	git

WORKDIR /workspace
RUN git clone -b 2.8-stable https://github.com/ntop/n2n.git
