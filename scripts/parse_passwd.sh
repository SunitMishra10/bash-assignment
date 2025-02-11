#!/bin/bash
<<info
Requirements
Extract the username ($1) and default shell ($7) from /etc/passwd.

Print them in a neatly formatted table, such as:

(Optional) If the script is run with --bash-only, only display users whose shell is /bin/bash.
info
if [ "$1" = "--bash-only" ]; then
	cat /etc/passwd | awk -F: '{ if ($7 == "/bin/bash") { print $1 , $7 } }'
else
	cat /etc/passwd | awk -F: '{ print $1 , $7 }'
fi
