THIS CODE WRITE INSIDE NANO !

#!/bin/bash

echo "=== AGENT MOHIT'S NETWORK LOOKUP ==="
echo "Current User on this system is:"
whoami
echo "-------------------------------------"

# User se input lena aur use TARGET variable mein save karna
echo "Mohit bhai, kis website ko ping karna hai? (e.g., google.com)"
read TARGET

echo "-------------------------------------"
echo "Thik hai, $TARGET par 3 packets bhej raha hoon..."

# Built-in ping command ka use karna variable ke sath
ping -c 3 $TARGET

THIS CODE SENT A PING TO TARGET WEBSITE AND IP 
Here the higher the number of legs, the higher the ping.
