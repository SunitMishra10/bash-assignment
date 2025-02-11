#!/bin/bash

<< info
File Name: check_root.sh

Objective: Ensure a script can detect if it’s being run by the root user and handle the case when it is not.

Requirements
If the script is not run by root (e.g., id -u != 0), print an error and exit with a non-zero code.
If run by root, print "You are root. Proceeding..." and exit with 0
info
current_user=$(whoami)
if [ $current_user == "root" ]; then
	echo "You are root. Proceeding..."
	exit 0
else
	echo "Sorry, you need to be root..."
	exit 0
fi
