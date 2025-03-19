#!/bin/bash

# Sprawdź, czy speedtest-cli jest zainstalowany
if ! command -v speedtest-cli &> /dev/null; then
    echo "speedtest-cli nie jest zainstalowany. Zainstaluj go poleceniem:"
    echo "  pip install speedtest-cli"
    exit 1
fi

echo "Rozpoczynam test prędkości internetu..."

# Uruchomienie testu i pobranie wyników
results=$(speedtest-cli --simple)

# Wydobycie wyników: ping, prędkość pobierania oraz wysyłania
ping=$(echo "$results" | grep "Ping:" | awk '{print $2}')
download=$(echo "$results" | grep "Download:" | awk '{print $2}')
upload=$(echo "$results" | grep "Upload:" | awk '{print $2}')

echo ""
echo "Wyniki testu:"
echo "Ping: $ping ms"
echo "Pobieranie: $download Mbps"
echo "Wysyłanie: $upload Mbps"

