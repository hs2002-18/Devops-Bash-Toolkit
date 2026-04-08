# 🌐 Website Monitoring & Auto-Recovery Script

## 📌 Problem

Websites and web servers may occasionally become unresponsive due to server errors, crashes, or configuration issues. Detecting such failures manually can delay recovery and affect service availability.

---

## 💡 Solution

This project provides a Bash script that monitors the availability of a website. If the website does not return a successful response, the script automatically restarts the web server service to restore functionality.

The script performs the following:

* Sends an HTTP request to the target website
* Retrieves the HTTP response status code
* Checks if the response indicates a failure
* Restarts the web server service if necessary

---

## 🛠️ Tech Used

* Bash (Scripting)
* Linux Commands
* curl (HTTP request testing)
* systemctl (service management)

---

## 📚 What I Learned

* Monitoring website availability using command-line tools
* Retrieving HTTP response codes with curl
* Writing conditional logic in Bash scripts
* Automating service recovery using systemctl

---

## ▶️ How to Run

1. Make it executable:

```
chmod +x script.sh
```

3. Run the script:

```
./script.sh
```

---

## ✅ Sample Output

### Website Running

```
Website is running fine.
```

### Website Down

```
Website down! Restarting service...
```

---

## 📌 Note

* Ensure the script has permission to restart services (`sudo` access may be required).
* Replace the placeholder URL with your actual website.
* The script assumes that a successful response returns HTTP status code **200**.
