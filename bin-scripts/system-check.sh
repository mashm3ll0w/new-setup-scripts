#!/bin/bash

# A script to check on system resources

clear
echo "Memory Usage:"
/usr/bin/free -h

echo $'\n'$"Disk Usage:"
# For HDDs
/bin/df -h /dev/sd[a-z][1-9] 2>/dev/null
# For SDDs
/bin/df -h /dev/nvme[0-9]n[1-9]p[1-9] 2>/dev/null

echo $'\n'$"Uptime:"
/usr/bin/uptime
