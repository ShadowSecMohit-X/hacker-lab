#!/bin/bash

echo "=== 📦 SHADOW-SEC AUTOMATED APP INSTALLER ==="

# Step 1: System update ka status check karna
echo "Updating system package lists... Please wait."
echo "----------------------------------------"
sudo apt update -y
echo "----------------------------------------"
echo "System Update Check Complete! ✅"

# Step 2: User se tool ka naam poochna
echo "Kaun sa hacking ya system tool install karna hai? (e.g., nmap, curl, net-tools):"
read TOOLNAME

echo "Installing $TOOLNAME... Hold tight!"
echo "----------------------------------------"

# Asali apt command ka magic yahan hai
sudo apt install $TOOLNAME -y

# Check karna ki installation kamyab hui ya nahi
if [ $? -eq 0 ]
then
    echo "----------------------------------------"
    echo "SUCCESS: $TOOLNAME aapke system mein install ho gaya hai! 🎉"
else
    echo "----------------------------------------"
    echo "ERROR: Installation failed! Naam check karo ya internet check karo. ❌"
fi


Add: Automated package installer using sudo apt utility
