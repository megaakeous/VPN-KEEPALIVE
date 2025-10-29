#!/bin/bash

# Configuration
LOG_FILE="/opt/Keep_alive_Scripts/vpn_keepalive.log"
TARGET_IP="x.x.x.x"

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

ping -c 3 -w 5 "$TARGET_IP" > /dev/null 2>&1
PING_STATUS=$?

if [ $PING_STATUS -eq 0 ]; then
    MESSAGE="SUCCESS: IP $TARGET_IP is reachable."
else
    MESSAGE="FAILURE: IP $TARGET_IP is unreachable."
fi

echo "$TIMESTAMP - $MESSAGE" >> "$LOG_FILE"
