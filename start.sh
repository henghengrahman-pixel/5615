#!/usr/bin/env bash
set -euo pipefail
export PORT="${PORT:-8080}"
export DATA_DIR="${DATA_DIR:-/data}"
export DB_PATH="${DB_PATH:-$DATA_DIR/marketing8008.db}"
mkdir -p "$DATA_DIR"
exec gunicorn --workers 1 --threads 8 --timeout 180 --bind "0.0.0.0:$PORT" app:app
