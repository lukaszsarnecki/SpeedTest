#!/usr/bin/env python3
import speedtest

def main():
    # Inform the user that the internet speed test is starting.
    print("Starting internet speed test...")
    
    # Create a Speedtest object to handle the test operations.
    st = speedtest.Speedtest()
    
    # Find and select the best server based on latency.
    print("Finding the best server...")
    st.get_best_server()
    best_server = st.get_best_server()
    
    # Display information about the selected server.
    # The best_server dictionary includes, among others, the keys: 'sponsor' (provider name), 'name' (server location), and 'country' (country). 
    print(f"Connected to server: {best_server['sponsor']} ({best_server['name']}, {best_server['country']})")
    
    # Perform the download speed test.
    print("Running download test...")
    download_speed = st.download()
    
    # Perform the upload speed test.
    print("Running upload test...")
    upload_speed = st.upload()
    
    # Retrieve the ping value from the test results.
    ping = st.results.ping

    # Display the test results in a formatted manner.
    print("\nTest results:")
    print(f"Ping: {ping:.2f} ms")
    print(f"Download: {download_speed/1e6:.2f} Mbps")
    print(f"Upload: {upload_speed/1e6:.2f} Mbps")

if __name__ == "__main__":
    main()

