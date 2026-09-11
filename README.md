# 🥷 Welcome to ShadowSecMohit-X's Hacker Lab!

> **"Started from zero, now navigating the terminal."** 🚀

Aura ekdum solid hai! Yeh mera official portfolio aur cyber security learning log hai, jahan meri hacking journey ka ek-ek step record hoga.

---

### 🐧 Linux Foundations (Level 1: Completed 🏆)
Main Linux file system ke basics par kabza kar chuka hoon:
* `pwd` & `ls -la` (Hidden files dhoondna)
* `cd` & `mkdir` (Directories banana aur explore karna)
* `touch`, `echo`, `cat` (Files banana aur read karna)
* `rm -r` (Destruction mode)
* `head` & `tail` (Files ka sir aur poochh dekhna)
* `less` (Badi files ko scroll karna)
* `grep` (Secret data dhoondh nikalna 🕵️‍♂️)

---

## 📈 Targets & Progress
- [x] Linux Foundations & Basic Terminal Commands 🐧
- [x] Bash Scripting to Automate Stuff 🤖 *(Level Completed! 17 Tools Built)*
- [x] Dynamic Binary Analysis & Forensics CTF Labs 🧩
- [x] Indian Cyber Quest (ICQ) Qualifier Event 🏆
- [ ] Level 3: Advanced Linux System Administration & Process Control ⚙️
- [ ] Networking & Traffic Analysis 🌐
- [ ] Web Penetration Testing & Bug Hunting 🕵️‍♂️

---

# Linux Bash Automation & Cyber Security Scripts 🚀

Welcome to my automation wing! This section contains a collection of **17 custom Bash scripts** designed to automate daily Linux system administration tasks, manage networking lookups, and simulate fundamental cyber security operations.

---

## 🛠️ Projects Overview

### 1. Profile Generator (`hacker_profile.sh`)
* **Purpose:** An interactive script that captures user details (alias, favorite tool, target) and generates a formatted cyber agent profile.
* **Concepts learned:** Read input, string variables.

### 2. Bash Calculator (`calculator.sh`)
* **Purpose:** Performs mathematical operations (addition and subtraction) directly inside the Linux terminal using user-provided integers.
* **Concepts learned:** Arithmetic operations `$((...))` in Bash.

### 3. Eligibility Auditor (`age_checker.sh`)
* **Purpose:** A validation tool that checks a user's age to audit eligibility for advanced security training modules.
* **Concepts learned:** Relational operators (`-ge` for greater than or equal to).

### 4. Integrity & File Checker (`file_checker.sh`)
* **Purpose:** Scans the local directory to verify whether a specific configuration file or log file exists. Critical for system defenses.
* **Concepts learned:** File-test operators (`-f` flag).

### 5. Stealth Password Lock (`secret_lock.sh`)
* **Purpose:** Implements a secure terminal authentication simulation. It hides password characters while typing and handles login attempts.
* **Concepts learned:** Secure input (`read -s`), string matching.

### 6. Automated Port Counter (`loop_counter.sh`)
* **Purpose:** Simulates a network port scanning loop, counting and iterating through network checkpoints.
* **Concepts learned:** `while` loop implementation, counter increments, loop conditions (`-le`).

### 7. Custom Environment Greeter (`color_greeter.sh`)
* **Purpose:** A shell customization script that takes user environment preferences and builds a personalized terminal greeting.
* **Concepts learned:** Variable reuse, dynamic outputs.

### 8. Incident Clean-up Tool (`auto_cleaner.sh`)
* **Purpose:** Simulates an incident response clean-up where a user can safely delete a redundant/temporary directory after confirmation.
* **Concepts learned:** Safe directory removal (`rm -rf`), nested confirmation logic.

### 9. Threat Intelligence Logger (`target_logger.sh`)
* **Purpose:** Captures targeted IP addresses or domains from the user and automatically logs them into a centralized text file without overwriting old data.
* **Concepts learned:** Data redirection and appending (`>>`), log generation.

### 10. The Ultimate Cyber Choice Menu (`cyber_menu.sh`)
* **Purpose:** A full-fledged interactive dashboard allowing security analysts to select missions (Network Scan, System Health Check, or Exit) from a structured terminal panel.
* **Concepts learned:** Advanced conditional trees (`if-elif-else`), system action mapping.

### 11. Hacker File Finder (`search_tool.sh`)
* **Purpose:** Uses the core `find` utility to scan directories and locate any hidden or system file by name or extension instantly.
* **Concepts learned:** `find` command structure, wildcard expressions (`*.sh`), directory traversal.

### 12. Network Intelligence Auditor (`net_checker.sh`)
* **Purpose:** Automatically extracts the local system's active IP configurations and diagnostics the live status of any remote host/domain using network packets.
* **Concepts learned:** Network interfaces (`ip a`), packet routing (`ping`), error status flags (`$?`), stream filtering (`grep`).

### 13. Advanced App Installer (`system_installer.sh`)
* **Purpose:** Automates system repository updates and securely installs third-party tools/packages with error-handling logic.
* **Concepts learned:** Superuser execution (`sudo`), package manager (`apt`), command verification flags (`$?`).

### 14. Automated Network Recon Bot (`network_recon.sh`)
* **Purpose:** Automatically audits target status using network pings and executes a fast Nmap scan (`nmap -F`) against active hosts, saving live intelligence output directly into a dedicated report file (`recon_report.txt`).
* **Concepts learned:** Network state auditing, output redirection (`>` and `>>`), dynamic text reporting, and process execution flow control.

### 15. Ultimate Cyber Dependency Installer (`hacker_setup.sh`)
* **Purpose:** A real-world system preparation script that audits required network and security packages (`curl`, `nmap`, `git`, `net-tools`, `htop`), automatically installs missing dependencies via `apt`, and ensures administrative privileges (`sudo`).
* **Concepts learned:** Array manipulation, `for` loops, root user verification (`$EUID`), and silent output redirection (`>/dev/null 2>&1`).

### 16. Automated Backup & Health Monitor (`system_backup.sh`)
* **Purpose:** Monitors core system health by auditing active root disk partition limits (aborting if disk usage is greater than 90%) and automatically zips files from the workspace directory into a compressed `.tar.gz` archive with dynamic timestamps and status logging.
* **Concepts learned:** Storage threshold logic (`df`, `awk`, `sed`), archive compression (`tar -czf`), directory creation checks (`[ ! -d ]`), and automated status reporting logs.

### 17. Cyber Port & Process Watchdog (`port_watchdog.sh`)
* **Purpose:** Actively monitors and audits system endpoints by checking active network listening states via socket statistics (`ss -tulpn`) and capturing the top 5 CPU-consuming background processes using advanced process status filters (`ps`), saving raw intelligence output to a centralized log folder.
* **Concepts learned:** Network socket auditing (`ss`), process capability analysis (`ps` pipeline sorting), log rotations with `mkdir -p`, and string appending formatting.

---

## 🧩 Dynamic Analysis & Forensics Labs (Level 2: Completed 🏆)

### 18. SpookyPass Binary Challenge Writeup
* **Objective:** Unpack, inspect, and extract dynamic flags from an obfuscated executable binary.
* **Tools Used:** `file`, `unzip`, `chmod`, `strings`, `grep`, `ltrace`
* **Methodology:**
  1. Extracted archived challenge files using `unzip` and elevated binary privileges using `chmod +x pass`.
  2. Executed dynamic library call tracing via `ltrace ./pass` to monitor string memory comparisons (`strcmp`) at runtime.
  3. Intercepted dynamic runtime string: `s3cr3t_p455_f0r_gh05t5_4nd_gh0ul5`
  4. Extracted readable flag using string stream filtering: `strings pass | grep -i "HTB{"`
* **Flag Captured:** `HTB{un0bfu5c4t3d_5tr1ng5}`

### 19. Server Log Forensics & Pipeline Analysis
* **Log Auditing:** Formulated advanced `grep` pipelines to extract incident indicators (`FAILED LOGIN`, `UNAUTHORIZED`) from multi-thousand line log streams.
* **Stream Decoding:** Processed encoded Base64 authorization tokens via terminal pipelines (`echo <cipher> | base64 -d`).

---

## 🏆 Target Events Accomplished
* **[x] Indian Cyber Quest (ICQ) Qualifier Event** — Prepared, attempted, and successfully completed hands-on challenges focusing on Linux command-line forensics, dynamic tracing, and stream decoding!

---

## 🚀 Level 3: Core Linux System Administration & Automation Projects (Next Phase)

Now transitioning into deep-dive system-level administration, practical process management, and advanced file manipulation before stepping into Web Penetration Testing:

- [ ] **Project 1:** Deep System Traversal & Permission Audit Scripting (`chmod` octal modes, `chown`, `find -perm`)
- [ ] **Project 2:** Advanced Process Interceptor & Job Control (`ps aux`, `htop`, `kill`, `bg`/`fg` management)
- [ ] **Project 3:** Dynamic I/O Redirection Engine (`tee`, multi-command pipelines `&&` / `||`, error stream splitting `2>&1`)

---

## 💻 How to Run These Scripts
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/ShadowSecMohit-X/linux-bash-automation.git](https://github.com/ShadowSecMohit-X/linux-bash-automation.git)
   cd linux-bash-automation

