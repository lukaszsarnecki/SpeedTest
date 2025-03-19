#!/bin/bash

# Check if speedtest-cli is installed
if ! command -v speedtest-cli &> /dev/null; then
    echo "speedtest-cli is not installed. Please install it using:"
    echo "  pip install speedtest-cli"
    exit 1
fi

echo "Starting internet speed test..."

# Run the test and retrieve the results
results=$(speedtest-cli --simple)

# Extract results: ping, download speed, and upload speed
ping=$(echo "$results" | grep "Ping:" | awk '{print $2}')
download=$(echo "$results" | grep "Download:" | awk '{print $2}')
upload=$(echo "$results" | grep "Upload:" | awk '{print $2}')

echo ""
echo "Test results:"
echo "Ping: $ping ms"
echo "Download: $download Mbps"
echo "Upload: $upload Mbps"

