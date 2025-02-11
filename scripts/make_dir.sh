#!/bin/bash
<<info
File Name: make_dir.sh

Objective: Practice checking for a directory’s existence, creating it if needed, and setting permissions.

Requirements
The script takes a directory path as an argument, e.g., ./make_dir.sh /path/to/dir.
Checks if the directory exists:
If not present, create it and set its permissions to 755.
If present, print "Directory already exists."
Display the final permissions using ls -ld.

info

if [ -d "$1" ]; then
	echo "Directory already exists."
	exit 0
else
	mkdir "$1"
	chmod 755 "$1"
	ls -ld $1
fi
