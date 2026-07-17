#!/bin/bash

# =================================================================
# PROJECT 17: CYBER PORT & PROCESS WATCHDOG
# AUTHOR: Agent Mohit (ShadowSecMohit-X)
# PURPOSE: Automatically audits open network ports and heavy processes.
# =================================================================

echo "=========================================="
echo "👁️ SHADOW-SEC CYBER WATCHDOG ACTIVATED 👁️"
echo "=========================================="

# 1. Variables aur Directory setup (hacker_lab ke andar hi logs banenge)
REPORT_DIR="$(pwd)/cyber_logs"
WATCHLOG="$REPORT_DIR/watchdog_report.log"

# Agar cyber_logs folder nahi bana, toh automatic bana do
mkdir -p "$REPORT_DIR"

# Log file ke andar time ka header daalna
echo "==========================================" >> "$WATCHLOG"
echo "🕒 WATCHDOG RUN AT: $(date)" >> "$WATCHLOG"
echo "==========================================" >> "$WATCHLOG"

# 2. Open Ports Audit (Network Hunting)
echo "[*] Auditing Open Network Ports... "
echo "--- ACTIVE OPEN PORTS (LISTENING) ---" >> "$WATCHLOG"

# ss command se TCP/UDP listening ports ki details nikal kar log file mein daalna
ss -tulpn >> "$WATCHLOG" 2>/dev/null

echo "✅ Network ports audited and logged."
echo "------------------------------------------" >> "$WATCHLOG"

# 3. Resource Process Audit (Spying on running software)
echo "[*] Scanning for heavy system processes (Top 5 CPU eaters)..."
echo "--- TOP 5 CPU EATING PROCESSES ---" >> "$WATCHLOG"

# ps command ko CPU percentage ke hisab se sort karke top 5 nikalna
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -6 >> "$WATCHLOG"

echo "✅ Heavy system processes audited and logged."

# 4. Success Check ($? ka jadoo!)
if [ $? -eq 0 ]; then
    echo "------------------------------------------"
    echo "🟢 SUCCESS: System posture audited safely!"
    echo "👉 Full log saved at: $WATCHLOG"
else
    echo "❌ ERROR: Watchdog audit failed!"
fi
echo "=========================================="
