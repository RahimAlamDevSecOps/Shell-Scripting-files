#!/bin/bash

threshold=80
email="rahimalam188@gmail.com"

df -hP | tail -n +2 | while read filesystem size used avail use_percent mount

do 
	usage=$(echo "$use_percent" | tr -d '%')
	
	if [ "$usage" -ge "$threshold" ]; then
		message="Disk usage on $mount has reached ${usage}%"

		echo "$message"

		echo "$message" | mail -s "Disk Usage Alert" "$email"
	fi
done
