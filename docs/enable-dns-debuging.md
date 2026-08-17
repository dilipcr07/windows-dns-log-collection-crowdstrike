# Enable DNS Debug Logging

## Purpose

DNS Debug Logging records DNS packets processed by the DNS Server.

These logs are useful for:

- Security Monitoring
- Threat Hunting
- Malware Detection
- DNS Tunneling Detection
- Incident Response

---

## Enable Logging

Open

DNS Manager

Server Properties

Debug Logging

Enable

✔ Log packets for debugging

Enable

- Incoming
- Outgoing
- UDP
- TCP
- Request
- Response

Log file

```
C:\Windows\System32\dns\dns.log  (this is file path)
```

---

## Generate Test Traffic

```
nslookup google.com
```

---

## Verify Log Creation

```
C:\Windows\System32\dns\dns.log
```

---

## Example Event

```
UDP Rcv
PTR
NOERROR
```

The DNS server has received a DNS request.

```
UDP Snd
```

The DNS server forwarded a DNS request.

```
NXDOMAIN
```

Requested domain does not exist.