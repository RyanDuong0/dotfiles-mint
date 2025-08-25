#!/bin/bash

# Check if ProtonVPN is running by looking for 'protonvpn' in the process list
if pgrep -x "protonvpn" > /dev/null; then
    echo "VPN:✓"
else
    echo "VPN:✗"
fi
