#!/bin/bash

<<info
Requirements
Use trap to catch SIGINT.
When the user presses CTRL+C, the script should:
Print "Caught SIGINT, cleaning up!"
Perform any cleanup tasks (like removing temporary files).
Exit gracefully with a status code.
info

cleanup() {
	echo "Performing cleanup"
	rm -rf /home/ubuntu/tempdir
	exit 1
}
trap cleanup SIGINT

mkdir -p /home/ubuntu/tempdir
touch /home/ubuntu/tempdir/temp.txt
for ((n=20; n; n--))
do
    sleep 1
done
