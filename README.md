# Speed Test Script

[English version](#english-version)

## Polish version

### Opis
Repozytorium zawiera dwa eleganckie skrypty, które służą do testowania prędkości połączenia internetowego:

**Skrypt Bash:** Wykorzystuje narzędzie speedtest-cli do przeprowadzenia testu prędkości. Skrypt sprawdza, czy narzędzie jest zainstalowane, a następnie wykonuje test, prezentując takie wyniki, jak ping, prędkość pobierania oraz wysyłania.

**Skrypt Python:** Korzysta z modułu speedtest (dostarczanego przez pakiet speedtest-cli) i oferuje bardziej zaawansowane funkcje. Skrypt tworzy obiekt Speedtest, wyszukuje najlepszy serwer na podstawie opóźnienia, wykonuje testy pobierania i wysyłania, a następnie prezentuje wyniki w uporządkowany sposób.

### Wymagania
Aby uruchomić oba skrypty, należy mieć zainstalowany **speedtest-cli**.

Instalacja:

```bash
pip install speedtest-cli
```
### Instrukcje użycia

#### Skrypt bash

**Przygotowanie:** Upewnij się, że skrypt ma prawa do wykonywania.
```bash
chmod +x speed_test.sh 
```
**Uruchamianie:**
```bash
./speed_test.sh
```
Skrypt w Bashu sprawdza, czy **speedtest-cli** jest zainstalowany, wykonuje test prędkości internetu i wyświetla wyniki, takie jak ping, prędkość pobierania oraz wysyłania.

#### Skrypt Python
**Uruchomienie:** Skrypt można uruchomić za pomocą Pythona:
```python
python3 speed_test.py 
```
Skrypt w Pythonie tworzy obiekt Speedtest, wyszukuje najlepszy serwer na podstawie opóźnienia, wykonuje testy pobierania i wysyłania, a następnie prezentuje wyniki (ping, prędkość pobierania i wysyłania) w czytelny i uporządkowany sposób.

### Szczegółowy opis działania
**1. Wybór najlepszego serwera:** Oba skrypty dokonują wyboru serwera o najniższym opóźnieniu, co gwarantuje uzyskanie precyzyjnych wyników testu.

**2. Pomiar prędkości:** 

**Testy obejmują:**

**- Ping:** Mierzy czas potrzebny na przesłanie danych do serwera i z powrotem.

**- Prędkość pobierania:** Określa, jak szybko dane są przesyłane z serwera do urządzenia.

**- Prędkość wysyłania:** Określa, jak szybko dane są przesyłane z urządzenia do serwera.

**3. Prezentacja wyników:** Po zakończeniu testów wyniki są wyświetlane w przejrzystym formacie, co ułatwia ocenę jakości połączenia internetowego.

Ciesz się testowaniem swojego połączenia i niech cyfrowa podróż będzie pełna szybkości i stabilności!

## English version
### Description
This repository contains two scripts that allow you to test your internet connection speed:

**Bash Script:** Utilizes the **speedtest-cli** command line tool to perform an internet speed test. The script checks if the tool is installed and then runs the test, displaying results such as ping, download speed, and upload speed.
**Python Script:** Leverages the **speedtest** module (provided by the **speedtest-cli** package) to offer a more advanced solution. It creates a Speedtest object, finds the best server based on latency, performs download and upload tests, and presents the results in an organized manner.

### Prerequisites
To run both scripts, you need to have **speedtest-cli** installed.
Installation:
```bash
pip install speedtest-cli
```

### Usage Instructions
#### Bash Script
**Setup:** Ensure that the script is executable.
```bash
chmod +x speed_test.sh 
```
**Execution:**
```bash
./speed_test.sh 
```

The Bash script verifies the installation of **speedtest-cli**, performs the internet speed test, and outputs the ping, download, and upload speeds.

#### Python Script
**Execution:** Run the script using Python:
```python
python3 speed_test.py 
```
The Python script creates a Speedtest object, finds the best server based on latency, performs the download and upload tests, and displays the results (ping, download speed, and upload speed) in a clear and formatted manner.

### Detailed Operation
**1. Best Server Selection:** Both scripts select the server with the lowest latency to ensure the accuracy of the test.

**2. Speed Measurement:** The tests measure:

**- Ping:** The round-trip time between your device and the selected server.

**- Download Speed:** How fast data is transferred from the server to your device.

**- Upload Speed:** How fast data is transferred from your device to the server.

**3. Results Presentation:** After the tests, the scripts display the results in an organized format, making it easy to evaluate your internet connection’s performance.

Enjoy testing your connection, and may your digital journey always be swift and steady!
