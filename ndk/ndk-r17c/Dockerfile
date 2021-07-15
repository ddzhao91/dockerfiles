FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
        vim \
        wget \
        git \
        zip \
        unzip \
        cmake \
        python3 && \
        rm -rf /var/lib/apt/lists/*
WORKDIR /root/workspace/
RUN wget --no-check-certificate https://dl.google.com/android/repository/android-ndk-r17c-linux-x86_64.zip && \
        unzip android-ndk-r17c-linux-x86_64.zip && \
        rm -rf android-ndk-r17c-linux-x86_64.zip
ENV NDK_HOME /root/workspace/android-ndk-r17c-linux-x86_64
