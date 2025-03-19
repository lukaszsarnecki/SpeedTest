#!/usr/bin/env python3
import speedtest

def main():
    # Announce the beginning of the internet speed test, inviting the user to observe the flow of digital currents.
    print("Starting internet speed test...")
    
    # Create a Speedtest object – the conductor orchestrating the performance of network evaluation.
    st = speedtest.Speedtest()
    
    # Search for and select the best server based on latency, ensuring the most precise and harmonious connection.
    print("Finding the best server...")
    st.get_best_server()
    
    # Perform the download test, measuring how swiftly data streams from the digital ether to your device.
    print("Running download test...")
    download_speed = st.download()
    
    # Perform the upload test, capturing the speed at which your device sends data out into the vast network.
    print("Running upload test...")
    upload_speed = st.upload()
    
    # Retrieve the ping value, which represents the round-trip time between your device and the chosen server.
    ping = st.results.ping

    # Display the test results in a neatly formatted output, revealing the true speed of your connection.
    print("\nTest results:")
    print(f"Ping: {ping:.2f} ms")
    print(f"Download: {download_speed/1e6:.2f} Mbps")
    print(f"Upload: {upload_speed/1e6:.2f} Mbps")

if __name__ == "__main__":
    main()

