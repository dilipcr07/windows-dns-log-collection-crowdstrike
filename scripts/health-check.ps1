Write-Host "=================================="
Write-Host "SYSTEM HEALTH CHECK"
Write-Host "=================================="

Write-Host "`nOperating System"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"

Write-Host "`nIP Configuration"
ipconfig

Write-Host "`nDNS Service"
Get-Service DNS

Write-Host "`nDNS Zones"
Get-DnsServerZone

Write-Host "`nForwarders"
Get-DnsServerForwarder

Write-Host "`nDNS Log"
Get-ChildItem C:\Windows\System32\dns\dns.log

Write-Host "`nCollector"
Get-Service *collector*

Write-Host "`nNetwork Connectivity"
Test-NetConnection 8.8.8.8 -Port 53

Write-Host "`nHealth Check Complete."