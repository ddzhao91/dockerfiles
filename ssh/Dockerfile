From ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    ssh \
    openssh-server \
    net-tools && \
    rm -rf /var/lib/apt/lists/*
    
RUN echo 'root:root' |chpasswd && \
    mkdir /var/run/sshd && \
    ssh-keygen -f /root/.ssh/id_rsa -P '' && \
    cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys && \
    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
