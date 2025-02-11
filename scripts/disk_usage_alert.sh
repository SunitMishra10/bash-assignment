#!/bin/bash
<<info
Requirements
Check if / usage is above 80% using df.
If above 80%, print or log "Disk usage critical: XX% used."
Otherwise, print "Disk usage is normal."
info

used_space=$(df -h / | grep '/' | awk '{ print $5 }'| sed 's/%//')
echo "Used space is $used_space%"
if [ $used_space -gt 80 ]; then
	echo "Disk usage critical: $used_space% used."
else
	echo "Disk usage is normal."
fi

