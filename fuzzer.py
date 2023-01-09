import requests
import sys

def loop():
    for word in sys.stdin:
        response = requests.get(url=f"Enter URL{word}")
        if response.status_code = 404:
            loop()

        else: 
            data = response.json()   
            print(data)
            print(response.status_code)
            print(word)

