#!/bin/bash

echo "=== HACKER FILE FINDER ==="
echo "Kaun si file dhoondni hai? (Naam daalo):"
read FILENAME

echo "Searching for $FILENAME in the current directory..."
echo "----------------------------------------"

# find command ka jalwa
find . -name "$FILENAME"

echo "----------------------------------------"
echo "Search complete! 😎"

Add: Core search utility script using find command
