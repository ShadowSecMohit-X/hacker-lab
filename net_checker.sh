#!/bin/bash

echo "=== 🌐 SHADOW-SEC NETWORK AUDITOR ==="

# Local IP configurations
echo "Aapka local network IP address yeh hai:"
echo "----------------------------------------"
ip a | grep "inet " | head -n 2
echo "----------------------------------------"

# Target input
echo "Ab kis website ya IP ko ping/check karna hai? (e.g., google.com):"
read TARGET

echo "Sending 3 test packets to $TARGET..."
echo "----------------------------------------"

# 3 baar ping test
ping -c 3 $TARGET

if [ $? -eq 0 ]
then
    echo "----------------------------------------"
    echo "STATUS: Target $TARGET ekdum ACTIVE hai! 🟢 Mission Ready!"
else
    echo "----------------------------------------"
    echo "STATUS: Target UNREACHABLE! 🔴 Ya toh band hai ya firewall ne block kiya."
fi

Add: Network diagnostics automation tool with ping and ip routing
