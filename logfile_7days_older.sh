#!/bin/bash

echo "finding and deleting files older than 7 days"

files=$(find . -type f -name "*.log" -mtime +7)

if [ -z "$files" ]; then
	echo "No old log files found."
else
	for file in $files
	do 
		echo "Deleting: $file"
		rm -f "$file"
	done
fi
echo "Cleanup completed"

