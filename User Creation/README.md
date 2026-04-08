# 👤 Linux User Creation Automation Script

## 📌 Problem

Creating users manually on Linux systems can be repetitive and prone to mistakes. Administrators must ensure that usernames are valid, users do not already exist, and passwords are properly set.

---

## 💡 Solution

This project provides a Bash script that automates the process of creating a new Linux user while performing necessary validations.

The script performs the following:

* Prompts for a username
* Validates the username format
* Checks if the user already exists
* Prompts for password and confirmation
* Creates the user with a home directory
* Automatically sets the user password

---

## 🛠️ Tech Used

* Bash (Shell scripting)
* Linux Commands (`useradd`, `id`, `chpasswd`)
* Basic input validation and loops

---

## 📚 What I Learned

* Automating Linux system administration tasks
* Validating user input in Bash scripts
* Handling password input securely
* Using conditional logic and loops in shell scripts
* Managing Linux users programmatically

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

## ✅ Sample Execution

```
Enter username: devuser
Enter password for devuser:
Confirm password:
User 'devuser' created successfully with password.
```

If passwords do not match:

```
Error: Passwords do not match! Please try again.
```

---

## 📌 Note

* The script requires **sudo/root privileges** to create users.
* Usernames must follow standard Linux naming rules.
* Password input is hidden for security.
