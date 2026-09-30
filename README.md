# Mini Enterprise PKI & Secure File Exchange Lab

A small Linux/OpenSSL security lab demonstrating PKI, RSA keys, X.509 certificates, AES encryption/decryption, certificate verification, audit logging, and incident/RCA documentation.

> Learning project: this demonstrates lab-level fundamentals. It does not claim production HSM/KMS or enterprise PKI implementation experience.

## Objectives
- Generate and protect RSA private keys
- Create a local Root Certificate Authority (CA)
- Generate CSRs and issue X.509 certificates
- Verify certificates against the trusted CA
- Demonstrate AES-256 file encryption/decryption
- Practice certificate lifecycle concepts
- Maintain basic security audit logs
- Simulate an incident ticket and RCA
- Automate repeatable steps with Bash

## Quick Start
On a Linux VM with OpenSSL installed:

```bash
chmod +x scripts/*.sh
./scripts/setup_pki.sh
./scripts/generate_server_cert.sh
./scripts/verify_certs.sh
./scripts/secure_file_demo.sh
```

Working files are created under `lab-output/`.

## Architecture

```text
                         Mini Root CA
                              |
                 +------------+------------+
                 |                         |
          Server Certificate        Client Certificate
                 |                         |
                 +------------+------------+
                              |
                    Certificate Verification
                              |
                       Secure File Demo
                              |
                         AES-256 CBC
                              |
                    Encryption / Decryption
                              |
                +-------------+-------------+
                |                           |
           Audit Logging              Incident + RCA
```

## Technologies
Linux/RHEL or CentOS, OpenSSL, Bash, RSA, X.509, PKI fundamentals, AES-256, Git/GitHub.

## What to Study
- Symmetric vs asymmetric cryptography
- RSA public/private keys
- AES and bulk encryption
- CSR and Certificate Authority
- X.509 certificates and trust
- Certificate expiry/revocation concepts
- Encryption vs hashing
- Private-key permissions

## Security
Generated private keys and encrypted files are ignored by Git. Never upload real credentials, private keys, passwords, or customer data.
