#!/bin/bash
<<info
Requirements
Create a daily backup of /home/devops_workspace at midnight.
Append the necessary command to the user’s crontab (if not already present).
Verify the cron job has been successfully scheduled.

info
source=$1

currentdate=$(date "+%Y-%d-%m_%H-%M-%S")
mkdir -p /home/ubuntu/backups
zip -r "/home/ubuntu/backups/backup_$currentdate.zip" $source > /dev/null

