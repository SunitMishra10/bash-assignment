#!/bin/bash
<<info
Requirements
Takes two directory paths as arguments, e.g., ./dir_compare.sh dirA dirB.
Compare the contents (filenames) of both directories.
Write the differences to dir_diff_YYYYMMDD.log.
Print a summary: "Differences found: X lines."
info
difference=$(diff -qr $1 $2)
numofline=$(diff -qr $1 $2 | wc | awk '{ print $1 }')
currentdate=$(date "+%Y%d%m")
currentdate1="dir_diff_$currentdate"
touch $currentdate1.log
echo $difference >> $currentdate1.log
echo "Lines of difference : $numofline"
