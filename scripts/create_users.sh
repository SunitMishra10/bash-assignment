#!/bin/bash
<<info
Requirements
Read from a CSV file containing entries in the format: username,password,group.
For each line:
Create the group if it doesn’t already exist.
Create the user, set their password, and add them to the group.
Print a success or error message.
info

while IFS=, read -r col1 col2 col3
do
	echo "$col1 : $col2: $col3"
	group_present=$(cat /etc/group | grep $col3 | wc | awk '{ print $1 }')
	if [ $group_present -eq 0 ]; then
		echo "Group $col3 doesn't exist. Creating.."
		sudo groupadd $col3	
	fi
	echo -e "\nCreating user $col1"
	sudo useradd -m $col1
        echo -e "$col2\n$col2" | sudo passwd $col1
        echo "User created successfully "
	echo "Adding user $col1 to group $col3"
	sudo gpasswd -a $col1 $col3
done < $1
