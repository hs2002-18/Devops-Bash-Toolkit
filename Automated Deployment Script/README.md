# 🚀 Automated Deployment Script

## 📌 Problem

Manual deployment of applications is repetitive, time-consuming, and prone to human errors. Tasks like pulling the latest code, installing dependencies, building the project, and restarting services can lead to inconsistencies if not handled properly.

---

## 💡 Solution

This project provides a simple Bash script that automates the deployment process. It performs the following steps:

* Pulls the latest code from the repository
* Installs required dependencies
* Builds the application
* Restarts the application using a process manager

This ensures a consistent and reliable deployment workflow with minimal manual effort.

---

## 🛠️ Tech Used

* Bash (Scripting)
* Git (Version Control)
* Node.js (Application Runtime)
* PM2 (Process Manager)

---

## 📚 What I Learned

* Understanding the **deployment workflow** of applications
* Automating repetitive tasks using **Bash scripting**
* Managing application processes effectively
* Improving reliability and reducing errors through automation

---

## ▶️ How to Run
1. Make the script executable:

   ```bash
   chmod +x script.sh
   ```

2. Run the script:

   ```bash
   ./script.sh
   ```

---

## ✅ Sample Output

```
Starting deployment...
Pulling latest code...
Installing dependencies...
Building application...
Restarting service...
Deployment successful!
```

---

## 📌 Note

Make sure you have the following installed on your system:

* Node.js & npm
* Git
* PM2
