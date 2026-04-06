#!/bin/bash
echo "=== Queue tree ==="
ps -ef --forest | grep queue_submit.sh | grep -v grep
echo
# echo "=== Running Python jobs ==="
# ps aux | grep train.py | grep -v grep