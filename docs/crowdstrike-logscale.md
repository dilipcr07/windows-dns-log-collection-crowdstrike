# CrowdStrike LogScale Collector

## Overview

The CrowdStrike LogScale Collector is a lightweight log collection agent used to collect logs from different sources and securely forward them to CrowdStrike Falcon NG-SIEM.

In this project, the collector continuously monitors the Windows DNS debug log file and sends newly generated DNS events to CrowdStrike for centralized analysis.

---

# Purpose

The collector performs the following tasks:

- Monitor log files
- Read newly appended log entries
- Parse log data
- Forward logs securely
- Ensure reliable delivery
- Support real-time monitoring

---

# Data Flow

```
Windows DNS Server

        │

        ▼

C:\Windows\System32\dns\dns.log

        │

        ▼

CrowdStrike LogScale Collector

        │

        ▼

CrowdStrike Falcon NG-SIEM

        │

        ▼

Detection • Investigation • Threat Hunting
```

---

# Log Source

The collector monitors the DNS debug log file.

```
C:\Windows\System32\dns\dns.log
```

---

# Collector Responsibilities

- File monitoring
- Log ingestion
- Incremental reading
- Secure transmission
- Connection management
- Buffering
- Error handling

---

# Verification Steps

## Verify DNS Service

```powershell
Get-Service DNS
```

---

## Verify DNS Log

```powershell
Get-ChildItem C:\Windows\System32\dns\dns.log
```

---

## Generate DNS Traffic

```powershell
nslookup google.com
```

---

## Confirm Log Updates

```powershell
Get-Content C:\Windows\System32\dns\dns.log -Tail 20
```

---

## Verify Collector Service

```powershell
Get-Service *collector*
```

---

## Verify CrowdStrike

Search for:

- google.com
- dns.log
- DNS
- UDP
- Request
- Response

---

# Benefits

- Real-time log collection
- Low resource usage
- Reliable log forwarding
- Secure communication
- Supports multiple log sources
- Easy integration with Falcon NG-SIEM

---

# Troubleshooting

## No DNS Logs

Check:

- DNS Server is running
- DNS Debug Logging is enabled
- DNS queries are being generated

---

## Collector Not Running

Verify:

```powershell
Get-Service *collector*
```

Restart if necessary.

---

## No Logs in CrowdStrike

Verify:

- Collector configuration
- Enrollment token
- Network connectivity
- Log file path
- Collector service status

---

# Future Enhancements

This project can be extended to collect additional security logs, including:

- Active Directory Logs
- Windows Security Logs
- Sysmon Logs
- IIS Logs
- Firewall Logs
- DHCP Logs
- Syslog from Linux
- Endpoint Detection Logs

---

# Conclusion

The CrowdStrike LogScale Collector serves as the bridge between Windows infrastructure and CrowdStrike Falcon NG-SIEM. By continuously monitoring the DNS debug log, it enables centralized visibility into DNS activity, supporting security monitoring, threat detection, and incident investigation.