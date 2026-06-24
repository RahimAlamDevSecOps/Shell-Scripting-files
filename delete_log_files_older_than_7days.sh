#!/bin/bash

log_dir="/var/log/myapp"

find "$log_dir" -type f -name "*.log" -mtime +7 -print -delete

echo "Cleanup completed"
