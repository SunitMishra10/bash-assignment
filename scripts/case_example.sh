#!/bin/bash
echo "[S] Start [R] Restart [Q] Quit"
read -p "Select your option " option
case $option in
	"S" | "s")
		echo "Starting the service..."
	        ;;
	
        "R" | "r")
                echo "Restarting the service..."
                ;;
        "Q" | "q")
                echo "Exiting..."
                ;;

	*)
		echo "Invalid option"
		;;
esac
