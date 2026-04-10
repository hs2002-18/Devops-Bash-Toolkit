# Log Analyzer Automation Script

## 📌 Problem

Nginx access logs grow rapidly in production environments and contain large volumes of raw data. Manually analyzing these logs to understand traffic patterns, detect errors, and identify top users is inefficient and time-consuming.

---

## 💡 Solution

This project provides a Bash automation script that analyzes Nginx access logs and generates a structured summary report. The script helps quickly extract meaningful insights from raw log data.

It performs the following:

* Counts total number of requests
* Identifies top 5 client IP addresses
* Finds most requested endpoints
* Extracts HTTP error responses (`4xx` and `5xx`)
* Lists top IPs causing errors
* Generates a timestamped report

---

🛠️ Tech Used
* Bash (Scripting)
* Linux commands (`awk`, `sort`, `uniq`, `wc`)
* Nginx Access Logs
* Text processing utilities

---

## 📚 What I Learned
* Parsing real-world log files using Bash
* Using `awk` for column-based data extraction
* Aggregating data using `sort` and `uniq`
* Understanding Nginx log structure
* Building small DevOps monitoring tools
* Basic observability concepts

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
=================================
Log Analysis Report
File: /var/log/nginx/access.log
Generated on: Fri Apr 10 16:30:00 UTC 2026
=================================

Total Requests:
12543

Top 5 IP Addresses:
1200 192.168.1.10
875 192.168.1.11
540 192.168.1.12

Top 5 Requested Endpoints:
/index.html
/login
/dashboard

HTTP Error Responses (4xx and 5xx):
404 120
500 35

Top 5 Error IPs:
192.168.1.15 45
192.168.1.20 20
```

---


## 📝 Sample `cleanup.log`

```bash
2026-04-10 16:30:00 - Starting log analysis
2026-04-10 16:30:01 - Total requests calculated
2026-04-10 16:30:02 - Top IPs extracted
2026-04-10 16:30:03 - Endpoint analysis completed
2026-04-10 16:30:04 - Error analysis completed
2026-04-10 16:30:05 - Log analysis completed
```

---

## 📌 Note
* This script assumes a standard Nginx log format
* $1 → IP Address
* $7 → Requested Endpoint
* $9 → HTTP Status Code
* Requires read permission for /var/log/nginx/access.log
* Works best on Linux-based systems