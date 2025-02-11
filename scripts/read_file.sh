#!/bin/bash
<<info
Requirements
Prompt the user for a filename.
If the file exists, read each line sequentially and print the line with its line number.
If the file does not exist, display an error and exit.
info
if ! [ -f $1 ]; then
	echo "File doesn't exist"
	exit
fi
counter=1;
while IFS= read -r line; do
    echo "$counter: $line"
    counter=$((counter+1))
done < "$1"
