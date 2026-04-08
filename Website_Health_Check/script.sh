#!/bin/bash
URL="https://example.com"
SERVICE="nginx"
LOG_FILE="monitor.log"
STATUS=$(curl --max-time 10 -o /dev/null -s -w "%{http_code}" "$URL")
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
if [ "$STATUS" -ne 200 ];then
    echo "$TIMESTAMP-Website Down (status:"$STATUS") $SERVICE-Offline Restarting Service..." | tee -a "$LOG_FILE"
    sudo systemctl restart "$SERVICE"
else
    echo "$TIMESTAMP-Website is UP" | tee -a "$LOG_FILE"
fi