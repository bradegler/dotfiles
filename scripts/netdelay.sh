#!/bin/sh 
# Adds a 200 ms network delay to all network traffic on the primary interface (eth0)
sudo tc qdisc show

if [ $# -ne 1 ]; then
	echo "Usage: $0 [on|off]"
	exit 1
fi

PARAM=`echo $1 | tr -s '[:upper:]' '[:lower:]'`
if [ "$PARAM" == "on" ]; then
	sudo tc qdisc add dev eth0 root handle 1:0 netem delay 200msec
else
	sudo tc qdisc del dev eth0 root
fi

sudo tc qdisc show
