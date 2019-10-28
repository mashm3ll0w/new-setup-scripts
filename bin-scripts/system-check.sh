#!/bin/bash

# A script to check on system resources

clear
echo "Memory Usage:"
/usr/bin/free -h

echo $'\n'$"Disk Usage:"
/bin/df -h /dev/sd[a-z][1-9] 2>/dev/null

echo $'\n'$"Uptime:"
/usr/bin/uptime
