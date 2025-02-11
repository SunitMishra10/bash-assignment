#!/bin/bash
<<info
Requirements
Takes an input file as an argument.
Sorts the file alphabetically (case-insensitive) and removes duplicates.
Outputs the result to sorted_unique.txt.
info
 sort -fu $1 > sorted_unique.txt
