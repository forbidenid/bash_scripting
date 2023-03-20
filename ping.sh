#!/bin/bash

for ip in $(seq 200 210); do 
    ping -c 1 192.168.234 $ip |grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 &
done
