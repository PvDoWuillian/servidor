#!/bin/bash
contador=1
while [ $contador -le 350 ]; do
  echo "suapalavra (Minuto $contador)"
  sleep 60
  contador=$((contador+1))
done

# --- COMANDO PARA REINICIAR SOZINHO (MAIS 6 HORAS) ---
GITHUB_USER="PvDoWuillian"
REPO_NAME="servidor"
WORKFLOW_ID="rotina.yml"

echo "Iniciando a segunda metade das 12 horas..."

curl -X POST \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  https://github.com{GITHUB_USER}/${REPO_NAME}/actions/workflows/${WORKFLOW_ID}/dispatches \
  -d '{"ref":"main"}'
