FROM domzh/cuda:9.0-dev

WORKDIR /opt
ENV OPENCV_VERSION="3.4.1"
RUN wget https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip 
RUN unzip ${OPENCV_VERSION}.zip && rm -rf ${OPENCV_VERSION}.zip && \
    mkdir opencv-${OPENCV_VERSION}/cmake_binary && \
    cd /opt/opencv-${OPENCV_VERSION}/cmake_binary && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    make install -j"$(nproc)" && rm -rf /opt/opencv-${OPENCV_VERSION} 
