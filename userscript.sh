#!/bin/bash

#check user

read -p "Enter username:" username

if grep -q "^$username:" /etc/passwd; then
	echo "User $username already exist"
else
	echo "User $username does not exist. Creating it"

	if useradd "$username"; then
	    echo "User $username created"
	else
		echo "Failed to create $username"
	fi

fi
