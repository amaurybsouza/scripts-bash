#!/usr/bin/env bash

for IP in $@
do
	iptables -I INPUT -p tcp -s $IP --dport 80 -j ACCEPT
done
sleep 2
iptables -nvL INPUT
