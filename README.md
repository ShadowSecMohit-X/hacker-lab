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
- [ ] Networking & IP Tracking basics 🌐
- [x] Bash Scripting to automate stuff 🤖 *(Level Completed! 10 Tools Built)*
- [ ] Web Penetration Testing basics 🕵️‍♂️

---

# Linux Bash Automation & Cyber Security Scripts 🚀

Welcome to my automation wing! This section contains a collection of **10 custom Bash scripts** designed to automate daily Linux system administration tasks, manage networking lookups, and simulate fundamental cyber security operations. 

Through these projects, I have mastered core scripting concepts like variables, user input handling, conditional logic (`if-else`), loops (`while`), file-system manipulation, and interactive command-line menus.

---

## 🛠️ Projects Overview

Here is the breakdown of the automation tools included in this repository:

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
* **Purpose:** Implements a secure terminal authentication simulation. It hides the password characters while typing (Hacker Style) and handles login attempts.
* **Concepts learned:** Secure input (`read -s`), string matching.

### 6. Automated Port Counter (`loop_counter.sh`)
* **Purpose:** Simulates a network port scanning loop, counting and iterating through network checkpoints.
* **Concepts learned:** `while` loop implementation, counter increments, loop conditions (`-le`).

### 7. Custom Environment Greeter (`color_greeter.sh`)
* **Purpose:** A shell customization script that takes user environment preferences and builds a personalized terminal greeting.
* **Concepts learned:** Variable reuse, dynamic outputs.

### 8. Incident Clean-up Tool (`auto_cleaner.sh`)
* **Purpose:** Simulates an incident response clean-up where a user can safely delete a redundant/temporary directory after an explicit confirmation check.
* **Concepts learned:** Safe directory removal (`rm -rf`), nested confirmation logic.

### 9. Threat Intelligence Logger (`target_logger.sh`)
* **Purpose:** Captures targeted IP addresses or domains from the user and automatically logs them into a centralized text file without overwriting old data.
* **Concepts learned:** Data redirection and appending (`>>`), log generation.

### 10. The Ultimate Cyber Choice Menu (`cyber_menu.sh`)
* **Purpose:** A full-fledged interactive dashboard allowing security analysts to select missions (Network Scan, System Health Check, or Exit) from a structured terminal panel.
* **Concepts learned:** Advanced conditional trees (`if-elif-else`), system action mapping.

---

## 💻 How to Run These Scripts

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/ShadowSecMohit-X/linux-bash-automation.git](https://github.com/ShadowSecMohit-X/linux-bash-automation.git)
   cd linux-bash-automation
