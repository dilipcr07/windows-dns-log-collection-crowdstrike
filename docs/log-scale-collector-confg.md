# CrowdStrike LogScale Collector Configuration

## Objective

Monitor DNS Debug Logs and send them to CrowdStrike NG-SIEM.

---

## Log Source

```
C:\Windows\System32\dns\dns.log
```

---

## Collector Workflow

```
DNS Debug Log

↓

LogScale Collector

↓

CrowdStrike NG-SIEM
```

---

## File Monitoring

The collector continuously watches

```
dns.log
```

When new events are written, they are immediately forwarded to CrowdStrike.

---

## Verification

Check

Collector Status

```
Running
```

Generate DNS traffic

```
nslookup google.com
```

Verify events appear inside CrowdStrike.