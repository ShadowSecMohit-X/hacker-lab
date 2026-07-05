THIS CODE WRITE INSIDE NANO !

#!/bin/bash

# 1. User se naam poochho aur use NAME naam ke dabbe (variable) mein save karo
echo "Aapka naam kya hai, Agent?"
read NAME

# 2. User se target poochho aur use TARGET mein save karo
echo "Aapka aaj ka target domain ya IP kya hai?"
read TARGET

# 3. Ab dono variables ko use karke screen par print karo
echo "----------------------------------------"
echo "Welcome back, Agent $NAME!"
echo "Initializing network scan on: $TARGET..."
echo "----------------------------------------"

THIS IS OUTPUT --->
Aapka naam kya hai, Agent?
Mohit
Aapka aaj ka target domain ya IP kya hai?
192.182.1.1              
----------------------------------------
Welcome back, Agent Mohit!
Initializing network scan on: 192.182.1.1...
----------------------------------------
