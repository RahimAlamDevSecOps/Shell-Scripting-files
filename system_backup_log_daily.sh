#!/bin/bash

log_dir="/var/log"
backup_dir="/root/backup/log"

date=$(date +%y-%m-%d)

mkdir -p "$backup_dir"

if tar -czf "$backup_dir/app_log_$date.tar.gz" "$log_dir"; then
	echo "Backup completed: $backup_dir/app_log_$date.tar.gz"
else
	echo "Backup failed"
fi
	
