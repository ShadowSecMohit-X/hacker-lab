#!/bin/bash

echo "=================================================="
echo "⚡ SHADOW-SEC CORE TOOLKIT AUDITOR STARTING... ⚡"
echo "=================================================="

# 1. Check karna ki user Admin (Root) hai ya nahi
if [ "$EUID" -ne 0 ]; then
    echo "❌ ERROR: Kripya is script ko 'sudo' ke saath chalayein!"
    exit 1
fi

# 2. Tools ki list (Array)
TOOLS=("curl" "nmap" "git" "net-tools" "htop")

echo "[*] Updating system repository lists first..."
apt update -y > /dev/null 2>&1
echo "✅ Repositories Updated!"
echo "--------------------------------------------------"

# 3. Ek-ek karke tools check karne ka loop
for TOOL in "${TOOLS[@]}"
do
    echo -n "[*] Checking if $TOOL is installed... "
    
    if command -v $TOOL >/dev/null 2>&1; then
        echo "🟢 ALREADY INSTALLED!"
    else
        echo "🔴 MISSING!"
        echo "⏳ Installing $TOOL... Please wait."
        
        apt install $TOOL -y > /dev/null 2>&1
        
        # Check ki installation sahi hui ya nahi ($? ka jadoo)
        if [ $? -eq 0 ]; then
            echo "✅ SUCCESS: $TOOL successfully installed!"
        else
            echo "❌ FAILED: Could not install $TOOL."
        fi
    fi
    echo "--------------------------------------------------"
done

echo "=================================================="
echo "🎯 ALL CORE HACKING TOOLS OPERATIONAL! 😎"
echo "=================================================="
