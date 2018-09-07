#!/bin/bash
service ssh start
#传进master的server名
sed -i "s/hadoop-master/$1/" $HADOOP_HOME/etc/hadoop/core-site.xml
sed -i "s/hadoop-master/$1/" $HADOOP_HOME/etc/hadoop/yarn-site.xml
#启动NodeManager和DataNode服务
/usr/local/hadoop/sbin/hadoop-daemon.sh start datanode & 
/usr/local/hadoop/sbin/yarn-daemon.sh start nodemanager &
#启动向master注册hostname和ip的服务
/tmp/registerClient $1 
#为了容器启动后不退出（如果脚本执行完，容器就结束了）
tail -f /dev/null
