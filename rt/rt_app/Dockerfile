FROM ubuntu:16.04

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
    zip \
    unzip && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /opt/
RUN wget --no-cookies \
    --no-check-certificate \
    --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/server-jre-8u191-linux-x64.tar.gz && \
    tar -zxvf server-jre-8u191-linux-x64.tar.gz && \
    rm -rf server-jre-8u191-linux-x64.tar.gz
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz && \
    tar -zxvf apache-tomcat-7.0.91.tar.gz && \
    rm -rf apache-tomcat-7.0.91.tar.gz
ENV JAVA_HOME /opt/jdk1.8.0_191
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH $JAVA_HOME/lib:$CLASSPATH
EXPOSE 8080
CMD ["/opt/apache-tomcat-7.0.91/bin/startup.sh", "run"]
