#!/bin/bash

echo "==== Basic Linux Commands Output ===="

echo "Current user:"
whoami

echo "Current directory:"
pwd

echo "List files:"
ls -l

echo "Show disk usage:"
df -h

echo "Show running processes:"
ps aux --width=30 --sort=-%mem | head

echo "Tree structure of /app:"
tree /app

echo "Script executed successfully!"
