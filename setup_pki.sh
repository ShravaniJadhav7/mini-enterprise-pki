#!/usr/bin/env bash
set -euo pipefail
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$BASE_DIR/lab-output"
mkdir -p "$OUT/ca/private" "$OUT/ca/certs" "$OUT/server" "$OUT/client" "$OUT/encryption" "$OUT/logs" "$OUT/tickets"
echo "[1/3] Generating Root CA private key..."
openssl genrsa -out "$OUT/ca/private/ca.key" 4096
chmod 600 "$OUT/ca/private/ca.key"
echo "[2/3] Creating self-signed Root CA certificate..."
openssl req -x509 -new -sha256 -days 365   -key "$OUT/ca/private/ca.key"   -out "$OUT/ca/certs/ca.crt"   -subj "/C=IN/ST=Maharashtra/L=Pune/O=Mini Enterprise PKI/OU=Security/CN=Mini Enterprise Root CA"
echo "[3/3] Writing audit event..."
echo "$(date '+%Y-%m-%d %H:%M:%S') KEY_GENERATED ca.key" >> "$OUT/logs/security-audit.log"
echo "$(date '+%Y-%m-%d %H:%M:%S') CA_CERTIFICATE_CREATED ca.crt" >> "$OUT/logs/security-audit.log"
openssl x509 -in "$OUT/ca/certs/ca.crt" -noout -subject -issuer -dates
echo "Root CA ready."
