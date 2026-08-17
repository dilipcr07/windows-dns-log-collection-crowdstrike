# Validation and Testing

## Verify DNS Service

```powershell
Get-Service DNS
```

---

## Verify Zones

```powershell
Get-DnsServerZone
```

---

## Verify Forwarders

```powershell
Get-DnsServerForwarder
```

---

## Verify Log File

```
C:\Windows\System32\dns\dns.log
```

---

## Generate Queries

```
nslookup google.com

nslookup github.com

nslookup microsoft.com
```

---

## Verify CrowdStrike

Search for

```
google.com

dns.log

PTR

A

AAAA
```

---

## Success Criteria

- DNS Server Running
- DNS Log Generated
- Collector Running
- Events Visible in CrowdStrike