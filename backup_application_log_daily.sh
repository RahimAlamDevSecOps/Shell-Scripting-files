#!/bin/bash

log_dir="/var/log/myapp"
backup_dir="backup/logs"

date=$(date +%y-%m-%d)

mkdir -p "$backup_dir"

tar -czf "$backup_dir/app_logs_$date.tar.gz" "$log_dir"
echo "Backup completed: $backup_dir/app_logs_$date.tar.gz"
