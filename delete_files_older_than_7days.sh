#!/bin/bash

log_files="/var/log/myapp"
find "$log_files" -type f -mtime +7 -delete

echo "Files older than 7 days in $log_files have been deleted"
