#!/bin/bash

username="root"

if id "$username" &>/dev/null; then
	echo "User $username exist"
else
	echo "User $username does not exist"
fi
