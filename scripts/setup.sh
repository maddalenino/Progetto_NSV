#!/bin/bash
set -euo pipefail

echo "=== Avvio progetto A1 ==="

docker compose down || true

docker compose up -d --build

echo
 echo "=== Container attivi ==="

docker compose ps

echo
 echo "Applicazione disponibile su:"
 echo "http://localhost:5000"
