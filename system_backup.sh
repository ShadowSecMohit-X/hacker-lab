#!/bin/bash

# =================================================================
# PROJECT: AUTOMATED SYSTEM HEALTH & BACKUP MONITOR
# AUTHOR: Agent Mohit (ShadowSecMohit-X)
# PURPOSE: Audits disk health and compresses critical workspace directories.
# =================================================================

echo "=========================================="
echo "🛡️ SHADOW-SEC AUTOMATED BACKUP SYSTEM 🛡️"
echo "=========================================="

# 1. Variables Setting (Paths aur dynamic file-naming)
SOURCE_DIR="$HOME/my_hacker_projects"
BACKUP_DIR="$HOME/secure_backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# 2. Folder Validation Check (Directory check)
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ ERROR: Source folder ($SOURCE_DIR) nahi mila!"
    echo "💡 Note: Pehle mkdir ~/my_hacker_projects chala kar folder banaayein."
    exit 1
fi

# Agar backup folder nahi bana hai, toh create kar do
mkdir -p "$BACKUP_DIR"

# 3. Disk Space Checking (Hard Disk Health Check)
# awk aur sed se hum pure disk percentage ka number nikalte hain
DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
echo "[*] Disk Usage Check: $DISK_USAGE%"

# Agar memory 90% se upar hai, toh backup stop karo taaki crash na ho
if [ "$DISK_USAGE" -gt 90 ]; then
    echo "🚨 WARNING: Disk full hai! Backup cancelled to avoid crash."
    exit 1
fi

# 4. Compression (Creating .tar.gz archive)
echo "[*] Files backup ban raha hai... Please wait."
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR" > /dev/null 2>&1

# 5. Success Check using Exit Status ($? ka jadoo!)
if [ $? -eq 0 ]; then
    echo "🟢 SUCCESS: Backup stored at $BACKUP_DIR/$BACKUP_FILE"
    echo "[$(date)] Backup Success: $BACKUP_FILE" >> "$BACKUP_DIR/backup_log.txt"
else
    echo "❌ FAILED: Tar compression fail ho gaya!"
fi
echo "=========================================="
