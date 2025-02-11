#!/bin/bash
<<info
Requirements
Prompt the user for:
Name (string)
Age (integer)
Email (basic pattern check)
Validate each input. If invalid, prompt again.
Once valid, append the details to users_info.csv in the format: name,age,email
info

while true; do
	read -p "Enter name :" name
        if [[ "$name" =~ ^[a-zA-Z]+$ ]]; then
        	break
    	else
        	echo "Invalid input. Please enter only letters."
    	fi
done

while true; do

	read -p "Enter age :" age
        if [[ "$age" =~ ^[0-9]+$ ]]; then
                break
        else
                echo "Invalid input. Please enter only numbers."
        fi
done

while true; do
	read -p "Enter email :" email
        if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
                break
        else
                echo "Invalid input. Please enter mail in valid format."
        fi
done

if [ ! -f ./users_info.csv ]; then
	touch users_info.csv
fi
echo "$name, $age, $email" >> ./users_info.csv
	
