# Installation Guide

## Objective

This guide explains how to prepare a Windows Server 2012 R2 machine for DNS log collection and onboarding into CrowdStrike NG-SIEM.

---

## Lab Environment

| Component            |      Version                   |
|-----------           |---------                       |
| Operating System     | Windows Server 2012 R2         | (you can use other win server)
| DNS Server           | Microsoft DNS Server           |
| Collector            | CrowdStrike LogScale Collector |
| SIEM                 | CrowdStrike NG-SIEM            |

---

## Prerequisites

- Windows Server 2012 R2 installed 
- Administrator privileges
- Internet connectivity
- CrowdStrike NG-SIEM tenant
- Enrollment Token
- LogScale Collector installer

---

## Step 1 - Install DNS Server

Open:

Server Manager

Manage → Add Roles and Features

Select:

- DNS Server

Complete the installation wizard.

---

## Step 2 - Verify DNS Service

```powershell
Get-Service DNS
```

Expected output

   Status : Running


---

## Step 3 - Install LogScale Collector

Install the CrowdStrike LogScale Collector using the enrollment token provided by CrowdStrike.

Verify:

```powershell
Get-Service *collector*
```

---

## Step 4 - Verify Installation

Confirm:

- DNS Service Running
- Collector Running
- Internet Connectivity