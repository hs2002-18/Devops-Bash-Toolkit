#!/bin/bash
LOG_DIR="your log directory path" #example /var/log/app
DAYS=7
LOG_FILE="your log file name" #example cleanup.log, in this what files are deleted is recorded

echo "Cleaning Files older than $DAYS days"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
#Check if Directory exists or not
if [ ! -d "$LOG_DIR" ]; then  #If no directory exists, logs the time timestamp in LOG_FILE, uses tee -a to print and write it in $LOG_FILE and exits
    echo "$TIMESTAMP - Error: Directory "$LOG_DIR" does not exist" | tee -a "$LOG_FILE"
    exit 1
fi
DELETED_FILES=$(find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -print) # Search for files that are needed to be deleted
if[ -z "$DELETED_FILES" ]; then # the "-z" check if variable is empty
    echo "$TIMESTAMP - No files to delete" | tee -a "$LOG_FILE" #Logs message with time stamp an no deletion happens
else
    echo "$TIMESTAMP - No old log files found." | tee -a "$LOF_FILE"
    echo "$DELETED_FILES" | tee -a "$LOG_FILE"  #Logs which files are being deleted

    find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -delete #deletes the file
    echo "$TIMESTAMP - Cleanup Completed" | tee -a "$LOG_FILE"
fi