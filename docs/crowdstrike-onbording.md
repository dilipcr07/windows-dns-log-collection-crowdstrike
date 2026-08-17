# CrowdStrike NG-SIEM Onboarding

## Objective

Verify successful ingestion of DNS Debug Logs.

---

## Generate DNS Events

Run

```
nslookup google.com

nslookup github.com

nslookup microsoft.com
```

---

## Search in CrowdStrike

Search for

```
DNS

dns.log

google.com

github.com
```

---

## Validate

Confirm

- Incoming Events
- Timestamp
- Query Type
- Source Host
- Response Code

---

## Expected Outcome

DNS logs should appear in CrowdStrike within a few seconds after generation.