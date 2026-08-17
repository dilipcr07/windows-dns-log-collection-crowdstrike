# Windows DNS Log Collection to CrowdStrike NG-SIEM

## Project Overview

This project demonstrates how to configure a Windows Server 2012 R2 DNS Server to generate DNS debug logs and onboard them into CrowdStrike NG-SIEM using the CrowdStrike LogScale Collector.

The objective of this project is to simulate a real-world SOC log onboarding scenario where DNS activity generated on a Windows DNS Server is collected, parsed, and ingested into CrowdStrike for monitoring, threat hunting, and detection engineering.

---

## Project Goals

- Deploy a Windows DNS Server
- Enable DNS Debug Logging
- Generate DNS query events
- Configure CrowdStrike LogScale Collector
- Collect DNS logs from the local filesystem
- Send DNS logs to CrowdStrike NG-SIEM
- Verify successful ingestion inside CrowdStrike

---

# Architecture

```

+------------------------+
| Windows Clients |
+-----------+------------+
|
| DNS Queries
|
v
+------------------------+
| Windows DNS Server |
| |
| DNS Debug Logging |
| |
| C:\Windows\System32|
| \dns\dns.log |
+-----------+------------+
|
| File Monitoring
|
v
+------------------------+
| LogScale Collector |
+-----------+------------+
|
| HTTPS
|
v
+------------------------+
| CrowdStrike NG-SIEM |
+------------------------+

```

---

# Technologies Used

- Windows Server 2012 R2
- DNS Server
- PowerShell
- CrowdStrike Falcon
- CrowdStrike LogScale Collector
- CrowdStrike NG-SIEM
- Windows DNS Debug Logging

---

# Lab Environment

| Component | Details |
|-----------|---------|
| DNS Server | Windows Server 2012 R2 |
| Collector | CrowdStrike LogScale Collector |
| SIEM | CrowdStrike NG-SIEM |
| Log Type | DNS Debug Logs |
| Operating System | Windows Server 2012 R2 |

---

# Features

- Windows DNS Server deployment
- DNS Zone configuration
- DNS Debug Logging
- DNS Query Monitoring
- CrowdStrike LogScale Collector
- File-based log ingestion
- Real-time log forwarding
- CrowdStrike event verification

---

# Project Workflow

1. Install the DNS Server role.
2. Configure the DNS Server.
3. Create DNS Zones.
4. Enable DNS Debug Logging.
5. Generate DNS traffic using `nslookup`.
6. Verify the creation of `dns.log`.
7. Install the CrowdStrike LogScale Collector.
8. Configure the collector to monitor `dns.log`.
9. Forward DNS logs to CrowdStrike NG-SIEM.
10. Verify events inside CrowdStrike.

---

# DNS Log Location

```

C:\Windows\System32\dns\dns.log

```

---

# Sample DNS Log

```

7/21/2026 2:27:59 AM UDP Rcv PTR Query

7/21/2026 2:27:59 AM UDP Snd PTR Response

NXDOMAIN

```

---

# What I Learned

During this project I learned:

- Windows DNS Server installation
- DNS Forward Lookup Zones
- Reverse Lookup Zones
- DNS Forwarders
- DNS Debug Logging
- Windows networking
- DNS troubleshooting
- PowerShell administration
- CrowdStrike LogScale Collector configuration
- File-based log collection
- CrowdStrike NG-SIEM data onboarding
- Log verification and troubleshooting

---

# Challenges Faced

- DNS Manager missing after installation
- DNS debug log not generated initially
- DNS server configuration issues
- Incorrect DNS client settings
- Missing DNS Forwarders
- Collector configuration troubleshooting
- SSL/TLS installation issues
- Service verification

---

# Skills Demonstrated

- SIEM Log Onboarding
- Windows Server Administration
- DNS Administration
- PowerShell
- CrowdStrike NG-SIEM
- LogScale Collector
- Log Collection
- Security Monitoring
- Troubleshooting
- Network Services

---

# Repository Structure

```

windows-dns-log-collection-crowdstrike/

├── README.md

├── architecture/

│ ├── architecture.png

│ └── architecture.drawio

├── configs/

│ ├── collector.yaml

│ └── dns-config.md

├── docs/

│ ├── installation-guide.md

│ ├── dns-server-setup.md

│ ├── dns-debug-logging.md

│ ├── crowdstrike-onboarding.md

│ └── troubleshooting.md

├── screenshots/

│ ├── dns-manager.png

│ ├── dns-debug-enabled.png

│ ├── dns-log.png

│ ├── collector-running.png

│ └── crowdstrike-events.png

├── scripts/

│ ├── verify-dns.ps1

│ ├── verify-collector.ps1

│ └── test-dns.ps1

└── sample-logs/

└── dns.log.sample

```

---

# Verification

The project is considered successful when:

- DNS Server is operational.
- DNS Debug Logging is enabled.
- `dns.log` is created.
- DNS queries are recorded.
- LogScale Collector reads `dns.log`.
- DNS events are visible inside CrowdStrike NG-SIEM.

---

# Future Improvements

- Active Directory log collection
- Windows Security Event logs
- Sysmon integration
- IIS log collection
- DHCP log collection
- RDP log collection
- Linux Syslog onboarding
- Detection Rules
- MITRE ATT&CK mapping
- Automated deployment using PowerShell

---

# References

Microsoft DNS Server Documentation

CrowdStrike Falcon LogScale Documentation

Windows Server 2012 R2 Documentation

---

# Author

**Dilip Dhakal**

Registered Computer Engineering 

Cybersecurity Enthusiast

Interested in SOC Operations, SIEM Engineering, Detection Engineering, and Log Management.

GitHub: https://github.com/<dilipcr07>
>

LinkedIn: https://www.linkedin.com/in/er-dilip-dhakal-448133389/<Dilip Dhakal>