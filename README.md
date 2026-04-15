# 🚀 DevOps Bash Toolkit

## 📖 Overview

The DevOps Bash Toolkit is a practical repository of utility scripts crafted to simplify the daily routines of DevOps engineers, system administrators, and developers. This collection addresses various operational needs, from automated deployments and system monitoring to routine cleanup and resource management, all through straightforward and robust Bash scripts. By leveraging these tools, users can enhance efficiency, reduce manual errors, and free up valuable time for more complex challenges.

## ✨ Features

-   🎯 **Automated Deployment Script**: Streamline application deployment processes with customizable script.
-   💾 **Backup & Log Retention**: Manage backups and enforce log retention policies to ensure data integrity and compliance.
-   🐳 **Docker Cleanup**: Efficiently remove stale Docker containers, images, and volumes to free up disk space and resources.
-   🗂️ **File Organizer**: Automate the organization and management of files and directories based on various criteria.
-   📊 **Log Analyzer Script**: Parse and analyze log files to extract critical information, identify patterns, and troubleshoot issues.
-   🧹 **Log Cleanup**: Automate the purging of old log files to maintain optimal disk space and system performance.
-   📈 **System Monitoring Tool**: Monitor key system resources such as CPU, memory, and disk usage with real-time insights.
-   👤 **User Creation**: Simplify the creation and management of user accounts, enhancing security and operational efficiency.
-   🌐 **Website Health Check**: Automatically monitor the availability and health of websites or web services.

## 🛠️ Tech Stack

**Core:**

[![Bash](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

**Tools:**

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)

## 🚀 Quick Start

### Prerequisites
-   A Unix-like operating system (Linux, macOS).
-   Bash shell environment.
-   Common command-line utilities (e.g., `grep`, `awk`, `sed`, `curl`, `rsync`, `jq`).
-   Specific scripts, such as "Docker Cleanup", require **Docker** to be installed and running.

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/hs2002-18/Devops-Bash-Toolkit.git
    cd Devops-Bash-Toolkit
    ```

2.  **Make scripts executable**
    Navigate into the directory of the script you wish to use and grant it execute permissions.
    ```bash
    cd "Docker Cleanup" # Example: navigate to Docker Cleanup scripts
    chmod +x docker_cleanup.sh # Example: make a script executable
    ```

3.  **Run a script**
    ```bash
    ./docker_cleanup.sh # Example: run the Docker cleanup script
    ```

## 📁 Project Structure

```
Devops-Bash-Toolkit/
├── Automated Deployment Script/ # Scripts for automating software deployments to target environments
├── Backup_Loggin_Retention/   # Scripts for managing backups and enforcing log retention policies
├── Docker Cleanup/              # Scripts for cleaning up Docker resources (containers, images, volumes)
├── File Organizer/              # Scripts for organizing and managing files and directories automatically
├── Log Analyzer Script/         # Scripts for parsing, filtering, and analyzing system or application logs
├── Log Cleanup/                 # Scripts for automating the removal of old log files to free up disk space
├── System Monitoring Tool/      # Scripts for monitoring system performance metrics (CPU, memory, disk, network)
├── User Creation/               # Scripts for automating the creation and configuration of new user accounts
└── Website_Health_Check/        # Scripts for performing health checks and monitoring website availability
```

## ⚙️ Configuration

Many scripts within this toolkit are designed to be easily configurable. You can adjust parameters by:
-   **Editing variables directly** at the top of the script file.
-   **Passing arguments** to the script when executing it from the command line.

Please refer to the comments and `usage` sections within each individual script for specific configuration options and examples.

## 🔧 Usage

Each script in this toolkit is self-contained within its respective directory. To use a script:

1.  **Navigate** to the script's directory (e.g., `cd "System Monitoring Tool"`).
2.  **Make sure** the script is executable (e.g., `chmod +x system_monitor.sh`).
3.  **Execute** the script, providing any necessary arguments.

**Example:**
```bash

# To run the System Monitoring Tool (assuming it's executable and in the current directory)
./system_monitor.sh

# To run the Docker Cleanup script (check script for potential arguments)
cd "Docker Cleanup"
./docker_cleanup.sh --remove-dangling-images --remove-exited-containers
```

It is highly recommended to inspect each script's content for its specific functionality, required arguments, and configuration options before execution.

## 🤝 Contributing

We welcome contributions to expand and improve this toolkit! If you have a useful DevOps Bash script or an enhancement to an existing one, please consider contributing.

### Development Setup
1.  Fork the repository.
2.  Clone your forked repository:
    ```bash
    git clone https://github.com/YOUR_USERNAME/Devops-Bash-Toolkit.git
    cd Devops-Bash-Toolkit
    ```
3.  Create a new branch for your feature or bug fix:
    ```bash
    git checkout -b feature/your-feature-name
    ```
4.  Develop your script or make your changes. Ensure your script is well-commented and includes usage instructions.
5.  Test your changes thoroughly.
6.  Commit your changes:
    ```bash
    git commit -m "feat: Add new script for X"
    ```
7.  Push to your branch:
    ```bash
    git push origin feature/your-feature-name
    ```
8.  Open a Pull Request to the `master` branch of the original repository.

## 📄 License

### Harsh Shrimali
