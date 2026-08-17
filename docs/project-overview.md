# Project Overview

## Project Title

**Windows DNS Log Collection and CrowdStrike NG-SIEM Integration**

---

## Project Description

This project demonstrates how to configure a Microsoft Windows DNS Server to generate DNS debug logs and forward them to CrowdStrike Falcon NG-SIEM using the CrowdStrike LogScale Collector.

The objective was to build a complete end-to-end log collection pipeline, starting from DNS query generation on a Windows Server to real-time log ingestion into CrowdStrike for security monitoring and threat hunting.

The project provides hands-on experience with Windows Server administration, DNS configuration, log collection, and SIEM integration.

---

# Architecture

```
                DNS Queries
                     │
                     ▼
        Windows DNS Server (2012 R2)
                     │
                     ▼
      DNS Debug Logging (dns.log)
                     │
                     ▼
     CrowdStrike LogScale Collector
                     │
                     ▼
      CrowdStrike Falcon NG-SIEM
                     │
                     ▼
 Security Monitoring • Detection • Investigation
```

---

# Objectives

- Configure Microsoft DNS Server
- Enable DNS Debug Logging
- Generate different DNS query types
- Configure CrowdStrike LogScale Collector
- Forward DNS logs to CrowdStrike Falcon NG-SIEM
- Validate successful log ingestion
- Explore different DNS packet types and response codes

---

# Technologies Used

| Technology | Purpose |
|------------|---------|
| Windows Server 2012 R2 | DNS Server |
| Microsoft DNS | DNS Service |
| PowerShell | Administration & Verification |
| CrowdStrike LogScale Collector | Log Collection |
| CrowdStrike Falcon NG-SIEM | Log Analysis |
| DNS Debug Logging | Packet Logging |

---

# Features

- Microsoft DNS Server configuration
- Forward Lookup Zone
- Reverse Lookup Zone
- DNS Debug Logging
- Real-time log monitoring
- CrowdStrike integration
- PowerShell verification scripts
- Troubleshooting documentation

---

# Workflow

1. Install and configure DNS Server
2. Create DNS Zones
3. Enable DNS Debug Logging
4. Generate DNS traffic using `nslookup`
5. Verify `dns.log`
6. Configure LogScale Collector
7. Send logs to CrowdStrike
8. Validate successful ingestion
9. Analyze DNS events inside Falcon NG-SIEM

---

# DNS Events Collected

The project captures multiple DNS event types, including:

- A Records
- AAAA Records
- MX Records
- NS Records
- SOA Records
- TXT Records
- PTR Records
- CNAME Records
- DNS Requests
- DNS Responses
- UDP Queries
- TCP Queries
- NXDOMAIN Responses
- NOERROR Responses

---

# Skills Demonstrated

- Windows Server Administration
- DNS Administration
- DNS Troubleshooting
- Windows Event Analysis
- PowerShell Automation
- Log Collection
- CrowdStrike LogScale Collector
- CrowdStrike Falcon NG-SIEM
- Security Monitoring
- Network Troubleshooting

---

# Project Outcome

Successfully configured a Windows DNS Server to generate DNS debug logs and forward them into CrowdStrike Falcon NG-SIEM using the CrowdStrike LogScale Collector.

The project demonstrates a practical SIEM log onboarding workflow and provides a foundation for future integrations such as Active Directory, Windows Security Events, Sysmon, and Syslog.