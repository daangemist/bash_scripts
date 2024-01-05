#!/bin/sh
# Start Docker daemon automatically when logging in if not running.

# Check if Docker is installed
if ! which docker >/dev/null; then
    # echo "Docker is not installed. Exiting."
    exit 1
fi

RUNNING=`ps aux | grep dockerd | grep -v grep`
if [ -z "$RUNNING" ]; then
    echo "Starting Docker daemon..."
    sudo /etc/init.d/docker start    
fi