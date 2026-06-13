#!/bin/bash

userfile="file.txt"

while read -r username
do
	if id "$username" &>/dev/null; then
	       echo "User $username already exist."
       else
		useradd "$username"
 		echo "User $username created"
	fi
done < "$userfile"	


