# 💾 Automated Backup & Retention Script

## 📌 Problem

Application data and files are critical and need regular backups to prevent data loss. Manual backups are time-consuming, inconsistent, and can lead to missed schedules or errors. Additionally, old backups can accumulate and consume significant disk space.

---

## 💡 Solution

This project provides a Bash script that automates the process of creating compressed backups and managing retention. It ensures that backups are created consistently and old backups are cleaned up automatically.

The script performs the following:

* Creates a compressed backup of a specified directory
* Stores backups with date-based naming for easy tracking
* Logs all operations with timestamps
* Removes old backups based on a retention policy

---

## 🛠️ Tech Used

* Bash (Scripting)
* Linux Commands (`tar`, `find`, `date`, `tee`)
* File System Operations

---

## 📚 What I Learned

* Automating backup processes using Bash
* Using `tar` for archiving and compression
* Implementing retention policies using `find`
* Writing logs with timestamps for auditability
* Handling errors and ensuring safe file operations

---

## ▶️ How to Run

1. Make it executable:

   ```bash
   chmod +x script.sh
   ```

3. Run the script:

   ```bash
   ./script.sh
   ```

---

## ✅ Sample Output (Terminal)

```bash
2026-04-06 15:00:00 - Starting backup...
2026-04-06 15:00:00 - Backup created: /backup/backup-2026-04-06.tar.gz
2026-04-06 15:00:00 - Cleaning old backups...
/backup/backup-2026-03-30.tar.gz
2026-04-06 15:00:00 - Backup and cleanup completed!
```

---

## 📝 Sample `backup.log`

```bash
2026-04-06 15:00:00 - Starting backup...
2026-04-06 15:00:00 - Backup created: /backup/backup-2026-04-06.tar.gz
2026-04-06 15:00:00 - Cleaning old backups...
/backup/backup-2026-03-30.tar.gz
2026-04-06 15:00:00 - Backup and cleanup completed!
```

---

## 📌 Note

* Ensure you have proper permissions to access the source and backup directories
* `-mtime +5` means files older than 5 days (not including the 5th day)
* Backups are compressed to save storage space
* This script is intended for basic automation and learning purposes