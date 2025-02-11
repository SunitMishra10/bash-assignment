#!/bin/bash
<<info
Requirements
Takes a service name as an argument (e.g., nginx).
Checks if the service is active using systemctl is-active or similar.
If it’s inactive, attempt to start it and print a success/failure message.
If it’s active, print "Service [service_name] is running."
info

is_active=$(systemctl is-active $1)
if [ "$is_active" == "active" ]; then
	echo "Service $1 is running"
else
	echo "Service $1 is not present. Installing"
	sudo apt-get update
	sudo apt-get install -y $1
	echo "$1 installed"
fi
