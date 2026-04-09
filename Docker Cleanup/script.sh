#!/bin/bash
set -e
LOG_FILE="cleanup.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "$TIMESTAMP - Checking runing containers" | tee -a "$LOG_FILE"
docker ps | tee -a "$LOG_FILE"

echo "$TIMESTAMP - Checking docker disj usage" | tee -a "$LOG_FILE"
docker system df | tee -a "$LOG_FILE"

read -p "Proceed with cleanup of resources older than 48 hours? (y/n): " confirm
if [ "$confirm" != "y" ];then
    echo "Cleanup Cancelled by user" | tee -a "$LOG_FILE"
    exit 0
fi
echo "Cleaning up resources older than 48 hours" | tee -a "$LOG_FILE"
docker system prune -a --filter "until=48h" | tee -a "$LOG_FILE"
echo "Cleanup Completed!" | tee -a "$LOG_FILE"