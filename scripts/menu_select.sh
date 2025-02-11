#!/bin/bash
<<info
Requirements
Present options such as:
Show Date and Time
List Files
Show Current User
Exit
Use select to capture the user’s choice.
Perform the corresponding action for each choice.
Loop until the user chooses Exit.
info
PS3="Select the operation: "
select option in "Show Date and Time" "List Files" "Show Current User" "Exit"; do
	case $option in
		"Show Date and Time")
			curdate=$(date)
			echo "$curdate"
		;;

                 "List Files")
                        listfiles=$(ls)
                        echo "$listfiles"
                ;;
                 "Show Current User")
                        curuser=$(whoami)
                        echo "$curuser"
                ;;
                 "Exit")
                        exit 0
                ;;

        esac
done
