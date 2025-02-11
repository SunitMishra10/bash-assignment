#!/bin/bash
<<info
Requirements
Define a function is_root() that:
Returns an exit status of 1 if the user is not root.
Returns 0 if the user is root.
In the main script, call is_root():
If it returns success (0), perform a privileged task (e.g., install a package).
If it returns failure, print "You must run this as root!" and exit.
info
is_root (){
	if [ "$(whoami)" == "root" ]; then
           	return 0
        else
		return 1
	fi

}
is_root
if [ $? -eq 0 ]; then
	sudo apt-get update
	sudo apt-get install -y docker.io
else
	echo "You must run this as root!"
fi
