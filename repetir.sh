#!/bin/bash
contador=1
while [ $contador -le 350 ]; do
  echo "salvo (Minuto $contador)"
  sleep 60
  contador=$((contador+1))
done
