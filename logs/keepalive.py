import requests
import time

def keep_alive(url):
    while True:
        try:
            response = requests.get(url)
            print(f"Keep-alive request sent: {response.status_code}")
        except Exception as e:
            print(f"Error: {e}")
        time.sleep(60)  # Envia solicitação a cada minuto

if __name__ == "__main__":
    # Substitua pela URL do seu Codespace
    keep_alive("https://legendary-acorn-77vr474r9wg42pvj5.github.dev/")