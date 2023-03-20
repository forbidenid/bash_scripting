#!/bin/bash

for ip in $(seq 200 210); #This is the ip range
do 
    ping -c 1 0.0.0.0 $ip |grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 & #Here you put the ip address that you are attackilg.

done
#Happy scripting buddy.
