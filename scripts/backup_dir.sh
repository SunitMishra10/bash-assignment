#!/bin/bash
<<info
Takes a directory path as the first argument.
Creates a tarball named backup_YYYYMMDD-HHMMSS.tar.gz.
Verifies the tarball was successfully created (non-zero size).
If successful, print in green text: "Backup Successful!" and exit with code 0.
If unsuccessful, print in red text: "Backup Failed!" and exit with code 1.
info

currentdate=$(date "+%Y%m%d-%H%M%S")
currentdate1="backup_$currentdate"
RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

# Create tar.gz archive
tar -czvf "$currentdate1.tar.gz" "$1"

size=$(stat --format="%s" "$currentdate1.tar.gz")

if [ "$size" -gt 0 ]; then
	echo -e "${GREEN} Backup Successful!${RESET}" 
	exit 0
else
	echo -e "${RED} Backup Failed!${RESET}"
	exit 1

fi



