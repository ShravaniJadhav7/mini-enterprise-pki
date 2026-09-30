#!/usr/bin/env bash
set -euo pipefail
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$BASE_DIR/lab-output"
echo "===== PKI Certificate Verification ====="
openssl verify -CAfile "$OUT/ca/certs/ca.crt" "$OUT/server/server.crt"
openssl x509 -in "$OUT/server/server.crt" -noout -subject -issuer -dates
echo "$(date '+%Y-%m-%d %H:%M:%S') SERVER_CERTIFICATE_VERIFIED" >> "$OUT/logs/security-audit.log"
echo "Verification completed successfully."
