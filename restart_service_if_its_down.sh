#!/bin/bash

service="nginx"

if systemctl is-active --quiet "$service"; then
	echo "$service is running"
else
	echo "$service is down. Restarting..."

	systemctl restart "$service"
	
	if systemctl is-active --quiet "$service"; then
		echo "$service restarted successfully"
	else
		echo "Failed to restart $service"
	fi
fi


