# DNS Server Configuration

## Overview

Microsoft DNS Server resolves hostnames into IP addresses and supports DNS logging for monitoring and security analysis.

---

## Configure Forward Lookup Zone

Create:

Forward Lookup Zone

Zone Type:

Primary Zone

Example:

```
localdomain
```

---

## Configure Reverse Lookup Zone

Network ID

```
192.xxx.xx
```

This creates

```
xx.168.xxx.in-addr.arpa
```

---

## Configure Forwarders

Example

```
8.8.8.8
1.1.1.1
```

Forwarders allow unknown DNS queries to be resolved by external DNS servers.

---

## Verification

Run

```powershell
Get-DnsServerZone
```

Expected output

- Forward Lookup Zone
- Reverse Lookup Zone