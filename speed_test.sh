#!/bin/bash

# Check if speedtest-cli is installed
if ! command -v speedtest-cli &> /dev/null; then
    echo "speedtest-cli is not installed. Please install it using:"
    echo "  pip install speedtest-cli"
    exit 1
fi

echo "Starting internet speed test..."

# Run speedtest-cli, printing output in real time and capturing it
results=$(speedtest-cli | tee /dev/tty)

# Extract server info, ping, download, and upload speeds
server_info=$(echo "$results" | grep "Hosted by")
ping=$(echo "$server_info" | awk -F'[' '{print $2}' | awk '{print $1}')
download=$(echo "$results" | grep "Download:" | awk '{print $2}')
upload=$(echo "$results" | grep "Upload:" | awk '{print $2}')

echo ""
echo "Test results:"
echo "$server_info"
echo "Ping: $ping ms"
echo "Download: $download Mbps"
echo "Upload: $upload Mbps"
