#!/bin/bash

#!/bin/bash

# =========================
# Server Health Check Script
# =========================

LOG_FILE="/var/log/server_health.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "===============================" >> $LOG_FILE
echo "Health Check - $DATE" >> $LOG_FILE
echo "===============================" >> $LOG_FILE

# CPU Load
echo "CPU Load:" >> $LOG_FILE
uptime >> $LOG_FILE

# Memory Usage
echo -e "\nMemory Usage:" >> $LOG_FILE
free -h >> $LOG_FILE

# Disk Usage
echo -e "\nDisk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE

# Uptime
echo -e "\nSystem Uptime:" >> $LOG_FILE
uptime -p >> $LOG_FILE

# Check a service (example: sshd)
SERVICE="sshd"

echo -e "\nService Status ($SERVICE):" >> $LOG_FILE
if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is running" >> $LOG_FILE
else
    echo "$SERVICE is NOT running" >> $LOG_FILE
fi

# Network Check (basic)
echo -e "\nNetwork Connectivity (Google DNS):" >> $LOG_FILE
ping -c 2 8.8.8.8 >> $LOG_FILE 2>&1

echo -e "\nHealth check completed at $DATE\n" >> $LOG_FILE
