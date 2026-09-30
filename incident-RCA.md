# Sample Incident & RCA

## INC-001 — Certificate Authentication Failure

**Severity:** Medium  
**Status:** Resolved  
**Category:** Certificate / Authentication

### Description
A client was unable to authenticate during a simulated secure-communication scenario.

### Investigation
1. Checked certificate subject and issuer.
2. Checked certificate validity dates.
3. Verified the certificate against the trusted CA.
4. Reviewed the security audit log.

### Root Cause
The simulated client certificate was treated as invalid for the scenario.

### Resolution
A replacement certificate was generated and verified against the trusted Root CA.

### Preventive Actions
- Track certificate expiry dates.
- Renew certificates before expiration.
- Protect private keys with restrictive permissions.
- Maintain audit and incident records.
