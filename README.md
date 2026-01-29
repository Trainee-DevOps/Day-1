# Day 1 – Linux File System Explorer

## 📘 Scenario
This project documents the Linux filesystem structure and storage details
to help new team members understand system layout and usage.

---

## 📂 Files Included

- `system_explorer.sh` – Shell script that scans the filesystem
- `system_explorer_report.md` – Auto-generated Markdown report
- `README.md` – Usage instructions and project overview

---

## ⚙️ Requirements

- Linux OS
- Bash shell
- Root privileges (recommended)

---

## ▶️ How to Run

```bash
chmod +x system_explorer.sh
sudo ./system_explorer.sh


## 📂 Important Linux Directories

When you first start working with Linux, the filesystem can look confusing.

---

### `/` – Root Directory
The `/` (root) directory is the **starting point of the entire Linux filesystem**.  
Everything on the system lives under this directory. If `/` is not available, the system cannot run.

**In simple terms:**
- This is the top of the filesystem tree
- All other directories are created under `/`
- Linux boots and operates from here

---

### `/etc` – System Configuration
The `/etc` directory contains **configuration files** that control how the system and services behave.

**purpose:**
- System settings are stored here
- Service and application configurations live here
- User and network settings are managed here

**Common examples:**
- `/etc/passwd` – User account details  
- `/etc/fstab` – Disk and mount configurations  
- `/etc/ssh/sshd_config` – SSH service settings  

---

### `/var` – Changing (Variable) Data
The `/var` directory holds **data that changes frequently** while the system is running.

**Purpose:**
- Stores log files
- Holds spool and cache data
- Maintains runtime application data

**Common examples:**
- `/var/log` – Log files  
- `/var/spool` – Queued tasks  
- `/var/cache` – Cached application data  

---

### `/home` – User Files
The `/home` directory is where **users keep their personal files**.

**Purpose:**
- Stores user files and documents
- Contains user-specific configuration files
- Provides isolated working environments for users

**Examples:**
- `/home/user1` – Home directory for user1 

---

### `/usr` – Applications and System Tools
The `/usr` directory stores **most user-level programs and system tools**.

**Purpose:**
- Stores installed applications and commands
- Provides shared libraries
- Holds documentation and architecture-independent data

**Examples:**
- `/usr/bin` – User commands  
- `/usr/lib` – Shared libraries  
- `/usr/share` – Documentation and shared resources  

---

### ✅ Quick Summary

| Directory | What it’s used for |
|----------|-------------------|
| `/` | Starting point of the entire system |
| `/etc` | System and service configuration |
| `/var` | Logs and frequently changing data |
| `/home` | User personal files |
| `/usr` | Applications, commands, and libraries |

