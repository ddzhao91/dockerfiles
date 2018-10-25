From nvidia/cuda:9.0-cudnn7-devel-centos7
RUN yum install -y epel-release && \
    yum install -y munge munge-devel && \
    chmod -Rf 700 /etc/munge && \
    chmod -Rf 711 /var/lib/munge && \
    chmod -Rf 700 /var/log/munge && \
    chmod -Rf 0755 /var/run/munge
    
RUN /usr/sbin/create-munge-key && chown munge:munge /etc/munge/munge.key

RUN export SLURMUSER=412 && \
    groupadd -g $SLURMUSER slurm && \
    useradd -m -c "SLURM workload manager" -d /var/lib/slurm -u $SLURMUSER -g slurm -s /bin/bash slurm
RUN yum install -y gcc \
    wget \
    openssl \
    openssl-devel \
    pam-devel \
    numactl \
    numactl-devel \
    hwloc \
    hwloc-devel \
    lua \
    lua-devel \
    readline-devel \
    rrdtool-devel \
    ncurses-devel \
    man2html \
    libibmad \
    libibumad \
    perl-Switch \
    perl-ExtUtils-MakeMaker \
    readline-devel \
    pam-devel \
    perl-DBI \
    mariadb \
    mariadb-devel \
    rpm-build
    
RUN cd ~ && wget  https://download.schedmd.com/slurm/slurm-17.11.9-2.tar.bz2 && \
    rpmbuild -ta slurm-17.11.9-2.tar.bz2 && \
    cd /root/rpmbuild/RPMS/x86_64 && \
    yum --nogpgcheck localinstall -y slurm-*.rpm && \
    mkdir /var/spool/slurm && \
    mkdir /var/spool/slurm/ctld && \
    mkdir /var/spool/slurm/d && \
    chown -R slurm:slurm /var/spool/slurm
RUN wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && mkdir /rt
RUN pip install --index-url https://mirrors.aliyun.com/pypi/simple tensorflow-gpu==1.9.0
COPY slurm.conf /etc/slurm/
COPY rt.service /lib/systemd/system/
COPY start.sh /rt/
