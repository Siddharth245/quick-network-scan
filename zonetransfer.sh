#!/bin/bash

if [ -z $1 ];then
echo "[*] Please specify the sitename"
echo "[*] Usage: $0 <sitename>"
exit 0
fi


for i in $(host -t ns $1| cut -d " " -f4); do host -l $1 $i;  done
