# Architecture

```text
                 Root Certificate Authority
                            |
              +-------------+-------------+
              |                           |
       Server Certificate          Client Certificate
              |                           |
              +-------------+-------------+
                            |
                    Certificate Trust
                            |
                    Secure Data Demo
                            |
                       AES-256
                            |
                 Encryption / Decryption
                            |
                 +----------+----------+
                 |                     |
             Audit Log            Incident/RCA
```

The Root CA represents a trusted certificate issuer. The server certificate represents an application/server identity. The secure-file demo illustrates symmetric encryption, while the certificate workflow demonstrates PKI fundamentals.
