#!/usr/bin/env bash
set -euo pipefail
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$BASE_DIR/lab-output"
[[ -f "$OUT/ca/private/ca.key" ]] || { echo "Run setup_pki.sh first."; exit 1; }
echo "[1/3] Generating server private key..."
openssl genrsa -out "$OUT/server/server.key" 2048
chmod 600 "$OUT/server/server.key"
echo "[2/3] Creating CSR..."
openssl req -new -key "$OUT/server/server.key" -out "$OUT/server/server.csr"   -subj "/C=IN/ST=Maharashtra/L=Pune/O=Mini Enterprise PKI/OU=Application Support/CN=secure-server.local"
echo "[3/3] Signing certificate with Root CA..."
openssl x509 -req -sha256 -days 365   -in "$OUT/server/server.csr"   -CA "$OUT/ca/certs/ca.crt"   -CAkey "$OUT/ca/private/ca.key"   -CAcreateserial   -out "$OUT/server/server.crt"
echo "$(date '+%Y-%m-%d %H:%M:%S') SERVER_CERTIFICATE_ISSUED server.crt" >> "$OUT/logs/security-audit.log"
openssl x509 -in "$OUT/server/server.crt" -noout -subject -issuer -dates
