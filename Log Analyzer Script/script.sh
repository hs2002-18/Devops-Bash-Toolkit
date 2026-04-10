#!/bin/bash
set -e
LOG_FILE="path to your log file"
if [ ! -f "$LOG_FILE" ]; then       # Check if the file exisits or not
    echo "Log file does not exist."
    exit 1
fi 
if [ ! -r "$LOG_FILE" ]; then       # Check if the you have the permissions to read or not
    echo "Permission Denied"
    exit 1
fi

echo "------"
echo "Log Analysis role" 
echo "File: $LOG_FILE"
echo "File Generated on ($date)"
echo "------"

echo "Total Request: "
wc -l < "$LOG_FILE"     # Counts the line, each line is one request

echo "Top 5 IP Addresses"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 # extracts the client IP, counts occurence, sorts them and displays top 5

echo "Top 5 Requested Endpoints:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 # Shows top[e requested end points
 
echo "HTTP Error Responses (4xx and 5xx):"
awk '$9 ~ /^[45]/ {print $9}' "$LOG_FILE" | sort | uniq -c  # Displays HTTP error codes for 4xx & 5xx

echo "Top 5 Error IPs:"
awk '$9 ~ /^[45]/ {print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 # Shows IP with most errors

echo ""
echo "Log analysis completed."
