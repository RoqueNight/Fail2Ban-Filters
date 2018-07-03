#!/bin/bash
echo Fetching Actibe Website Connections
sleep 3
netstat -an | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

