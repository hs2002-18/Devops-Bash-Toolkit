# 🐳 Docker Cleanup Automation Script

## 📌 Problem

Over time, Docker environments accumulate unused containers, images, networks, and cache files. These unused resources can consume significant disk space and affect system performance if not cleaned regularly.

Manually monitoring and cleaning Docker resources can be repetitive and error-prone.

---

## 💡 Solution

This project provides a Bash script that automates monitoring and safe cleanup of Docker resources.

The script performs the following tasks:

* Displays running Docker containers
* Shows Docker disk usage statistics
* Requests user confirmation before cleanup
* Removes unused Docker resources older than 48 hours
* Logs all operations with timestamps

This ensures safe maintenance of Docker environments.

---

## 🛠️ Tech Used

* Bash scripting
* Docker CLI commands
* Linux logging techniques

Key commands used:

* docker ps
* docker system df
* docker system prune
* tee

---

## 📚 What I Learned

* Automating Docker maintenance tasks
* Logging script activity with timestamps
* Using filters to perform safer Docker cleanup
* Combining monitoring and maintenance in automation scripts
* Writing safer production-style Bash scripts

---

## ▶️ How to Run

1. Make the script executable:

```
chmod +x script.sh
```

2. Run the script:

```
./script.sh
```

---

## ✅ Sample Output

```
2026-04-09 14:30:15 - Checking running containers...
CONTAINER ID   IMAGE   STATUS
123abc         nginx   Up 2 hours

2026-04-09 14:30:15 - Checking Docker disk usage...
TYPE            TOTAL     ACTIVE    SIZE
Images          12        3         3.4GB

Proceed with cleanup of unused resources older than 48 hours? (y/n): y

2026-04-09 14:30:20 - Cleaning unused Docker resources older than 48 hours...

Deleted Containers:
abc123

2026-04-09 14:30:22 - Docker cleanup completed successfully.
```

---

## 📌 Note

* Docker must be installed on the system.
* The user running the script must have permission to execute Docker commands.
* The script removes only resources older than 48 hours for safety.