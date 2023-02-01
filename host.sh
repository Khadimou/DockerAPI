#!/bin/bash

ipadrr='172.31.96'
let "connected= 0"
let "notconnected= 1"
for ip in $ipadrr.{1..255}
do
	if [ "`ping -c 1 ip &> /dev/null`" ]; then
		echo "$ip est connected, exit $?"
		let "connected = connected + 1"
	else
		echo "$ip n'est pas connected, exit $?"
		let "notconnected = notconnected + 1"
	fi
done
echo "on a $connected utilisateurs online" >> online.txt
echo "on a $notconnected utilisateurs offline" >> offline.txt
