#!/bin/bash
<<info
File Name: resource_monitor.sh

Objective: Introduce command substitution and conditional logic for monitoring basic system resources.

Requirements
Retrieve current CPU usage and memory usage.
If CPU usage is above a certain threshold (e.g., 80%), print a warning.
If available memory is below a certain threshold (e.g., 200 MB), print a warning.
Otherwise, print "System resources are normal."
info
cpu_usage=$(top -bn1 | grep -i "cpu(s)" | awk '{ print $2 + $4}')
free_memory=$(free -m | grep -i "Mem" | awk '{print $4}')
if [ $cpu_usage -ge 80 ] || [ $free_memory -le 200 ]; then
	if [ $cpu_usage -ge 80 ]; then
		echo "Warning CPU utilization has exceeeded 80%"
	fi

	if [ $free_memory -le 200000 ]; then
                echo "Warning Free memory is less than 200 MB"
        fi


	echo "Warning!! CPU usage is above 80 percent"
else
	echo "System resources are normal"
fi

