#!/bin/bash
set -e             #Prevents incomplete or broken backups
SOURCE="/var/www"  #Directory to backup, this is an example
BACKUP_DIR="/backup"  #This is where backups are created
DATE=$(date +%F)      # Current Date
RETENTION_DAYS=5      # Number of days to retain backups
LOG_FILE="backup.log"  #File where log is stored
TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S") 

echo "$TIMESTAMP - Starting Backup" | tee -a "$LOG_FILE"
mkdir -p "$BACKUP_DIR"                               #Creates the directory if it does not exist, -p avoids duplication
BACKUP_FILE="$BACKUP_DIR/backup-$DATE.tar.gz"        # Path for backup file
tar -czf "$BACKUP_FILE" "$SOURCE"                    # this command collects all the file in SOURCE, creates, compress and creates an output file name
echo "$TIMESTAMP - Backup created: $BACKUP_FILE" | tee -a "$LOG_FILE"  

echo "$TIMESTAMP - Cleaning old backups" | tee -a "$LOG_FILE"
find "$BACKUP_DIR" -type f -name "backup-*.tar.gz" -mtime +$RETENTION_DAYS -print -delete | tee -a "$LOG_FILE"  #Searches backup directory and deletes the file which are older than 5 days
echo "$TIMESTAMP - Backup and cleanup completed" | tee -a "$LOG_FILE"