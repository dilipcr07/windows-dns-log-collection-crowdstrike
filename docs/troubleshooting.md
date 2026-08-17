# Troubleshooting

## Issue

DNS Manager Missing

### Solution

Install

DNS Server Tools

---

## Issue

dns.log not created

### Solution

- Enable Debug Logging
- Restart DNS Service
- Generate DNS Queries
- Verify log file path
- if not reinstall the dns service
---

## Issue

Collector not forwarding logs

### Solution

- Verify collector service
- Check collector configuration
- Validate enrollment token
- Check network connectivity

---

## Issue

DNS resolution fails

### Solution

- Verify DNS Server service
- Check Forward Lookup Zone
- Configure Forwarders
- Verify client DNS configuration

---

## Issue

No events in CrowdStrike

### Solution

- Confirm collector is running
- Verify monitored file path
- Generate DNS traffic
- Search using hostname or domain

---

## Useful PowerShell Commands

```powershell
Get-Service DNS

Get-DnsServerZone

Get-DnsServerForwarder

Restart-Service DNS

Get-Content C:\Windows\System32\dns\dns.log -Tail 20
```