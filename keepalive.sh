# Arquivo: keepalive.sh
#!/bin/bash
while true; do
  echo "/say Server is running..." | nc localhost 25565
  sleep 300  # 5 minutos
done