# 📊 System Monitoring & Alert Script

## 📌 Problem

Monitoring system resources like CPU and memory manually is inefficient and unreliable. High resource usage can go unnoticed, leading to performance degradation or application downtime if not addressed promptly.

---

## 💡 Solution

This project provides an automated Bash script that monitors CPU and memory usage in real time. It compares current usage against predefined thresholds and logs alerts when limits are exceeded.

The script performs the following:

* Retrieves current CPU usage
* Calculates memory usage percentage
* Compares values against defined thresholds
* Logs alerts with timestamps for better tracking
* Clearly separates log entries for readability

---

## 🛠️ Tech Used

* Bash (Scripting)
* Linux Commands (`top`, `free`, `awk`, `grep`)
* System Utilities (`date`)

---

## 📚 What I Learned

* Monitoring system performance using Linux tools
* Parsing and processing command-line output
* Writing conditional logic in Bash
* Implementing structured logging with timestamps
* Improving script readability and maintainability

---

## ▶️ How to Run

1. Make it executable:

   ```bash
   chmod +x script.sh
   ```

2. Run the script:

   ```bash
   ./script.sh
   ```

---

## ✅ Sample Output (Terminal)

```bash
CPU Usage: 45%
Memory Usage: 62%
```

---

## 📝 Sample `alert.log`

```bash
2026-04-06 14:30:12 - Alert: High CPU Usage (85%)
------------------------
2026-04-06 14:35:10 - Alert: High CPU Usage (82%) High Memory Usage (91%)
------------------------
```

---

## 📌 Note

* CPU usage calculation may vary slightly depending on system configuration
* Ensure required tools (`top`, `free`) are available on your system
* This script is designed for basic monitoring and learning purposes
