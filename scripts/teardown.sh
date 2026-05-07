#!/bin/bash
set -euo pipefail

echo "=== Arresto progetto ==="

docker compose down

echo "Container fermati."
