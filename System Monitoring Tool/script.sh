#!/bin/bash
#Threshold for both CPU and Memory
CPU_THRESHOLD=70
MEM_THRESHOLD=65

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1) #Shows the current CPU usage
MEM_USAGE=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}') #Shows the current memory usage

echo "CPU USAGE: $CPU_USAGE%"
echo "MEM USAGE: $MEM_USAGE%"

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")  #Shows the date and time of logs

if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ] || [ "$MEM_USAGE" -gt "$MEM_THRESHOLD"]; then
    MESSAGE="$TIMESTAMP - Alert:"

    if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ]; then
    MESSAGE="$MESSAGE High CPU Usage ($CPU_USAGE%)"
    fi

    if [ "$MEM_USAGE" -gt "$MEM_THRESHOLD" ]; then
    MESSAGE="$MESSAGE High Memory Usage ($MEM_USAGE%)"
    fi

  echo "$MESSAGE" >> alert.log                         #Appends the message to alert.log file
  echo "------------------------" >> alert.log          
fi
