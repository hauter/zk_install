#! /bin/bash
#set -x
wget http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz

tar zxvf zookeeper-3.4.8.tar.gz

cp -rf zookeeper-3.4.8 z0
cp -rf zookeeper-3.4.8 z1
mv zookeeper-3.4.8 z2

cp file/zoo0.cfg z0/conf/zoo.cfg
cp file/zoo1.cfg z1/conf/zoo.cfg
cp file/zoo2.cfg z2/conf/zoo.cfg


mkdir -p /tmp/zookeeper/z0/data/
mkdir -p /tmp/zookeeper/z1/data/
mkdir -p /tmp/zookeeper/z2/data/

mkdir -p /tmp/zookeeper/z0/logs/
mkdir -p /tmp/zookeeper/z1/logs/
mkdir -p /tmp/zookeeper/z2/logs/

echo "0" > /tmp/zookeeper/z0/data/myid
echo "1" > /tmp/zookeeper/z1/data/myid
echo "2" > /tmp/zookeeper/z2/data/myid



