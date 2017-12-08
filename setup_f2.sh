#!/bin/bash

apt-get -y update
apt-get -y install libmicrohttpd10

sysctl -w vm.nr_hugepages=128

echo '* soft memlock 262144' >> /etc/security/limits.conf
echo '* hard memlock 262144' >> /etc/security/limits.conf

screen -dmS xmrig /root/testing/ml.sh $1 $2
