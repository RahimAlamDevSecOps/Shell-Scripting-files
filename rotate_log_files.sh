#!/bin/bash

log_file="/var/log/my-app"
date=$(date +%y-%m-%d)

if [ -f "$log_file" ]; then
	mv "$log_file" "${log_file}_$date"

	gzip "${log_file}_$date"

	touch "$log_file"

	echo "Log rotated successfully"
	
else
	echo "Log files not found"
fi
