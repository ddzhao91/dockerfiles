From ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    ssh \
    openssh-server \
    net-tools && \
    rm -rf /var/lib/apt/lists/*
    
RUN echo 'root:root' |chpasswd && \
    mkdir /var/run/sshd && \
    ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
