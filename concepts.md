# Security Concepts Demonstrated

## PKI
Public Key Infrastructure provides a framework for managing keys, certificates, trust and certificate lifecycle.

## Certificate Authority
A CA signs certificates so clients can establish trust in the certificate issuer.

## CSR
A Certificate Signing Request contains identity information and public-key material used to request a certificate from a CA.

## X.509
X.509 is a standard format for digital certificates.

## Symmetric Encryption
AES uses the same secret for encryption and decryption and is efficient for bulk data.

## Asymmetric Cryptography
RSA uses a related public/private key pair. The private key must remain protected.

## Hashing
A hash is a one-way transformation commonly used for integrity verification. It is not the same as encryption.

## Certificate Lifecycle
```text
Key Generation -> CSR -> Issuance -> Deployment -> Monitoring -> Renewal/Rotation -> Revocation/Expiry
```
