#!/bin/bash
#启动ssh服务
service ssh start
#获取容器IP
ip=`ifconfig eth0 | grep 'inet addr' | cut -d : -f 2 | cut -d ' ' -f 1`
sed -i "s/hadoop-master/$ip/" $HADOOP_HOME/etc/hadoop/core-site.xml
sed -i "s/hadoop-master/$ip/" $HADOOP_HOME/etc/hadoop/yarn-site.xml
#启动master节点hadoop
$HADOOP_HOME/sbin/start-dfs.sh &
$HADOOP_HOME/sbin/start-yarn.sh &
#启动hosts注册服务（这个服务是用自己go语言写的）
/tmp/registerServer &
/bin/gotty --port 8000 --permit-write --reconnect /bin/bash  
