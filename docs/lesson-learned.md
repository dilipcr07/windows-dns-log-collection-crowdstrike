# Lessons Learned

This project provided practical experience in deploying and troubleshooting a Windows DNS Server while integrating it with CrowdStrike NG-SIEM.

## Key Takeaways

- Installed and configured Microsoft DNS Server.
- Created forward and reverse lookup zones.
- Enabled DNS debug logging.
- Generated DNS traffic using `nslookup`.
- Understood DNS packet types, response codes, and record types.
- Configured the CrowdStrike LogScale Collector to monitor file-based logs.
- Successfully onboarded DNS logs into CrowdStrike NG-SIEM.
- Troubleshot issues related to DNS configuration, debug logging, and collector setup.

## Skills Developed

- Windows Server Administration
- DNS Administration
- PowerShell
- Log Collection and Parsing
- SIEM Data Onboarding
- CrowdStrike LogScale Collector
- Network Troubleshooting
- Security Monitoring

## Future Enhancements

- Collect Active Directory logs.
- Integrate Windows Event Logs and Sysmon.
- Create CrowdStrike detection rules for suspicious DNS activity.
- Simulate attacks such as DNS tunneling and analyze the resulting logs.
- Expand the lab to include Linux syslog and firewall logs for centralized monitoring.