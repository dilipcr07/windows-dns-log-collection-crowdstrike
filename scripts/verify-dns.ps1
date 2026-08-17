Write-Host "==============================="
Write-Host "DNS SERVER VERIFICATION"
Write-Host "==============================="

Write-Host "`nChecking DNS Service..."
Get-Service DNS

Write-Host "`nChecking DNS Zones..."
Get-DnsServerZone

Write-Host "`nChecking DNS Forwarders..."
Get-DnsServerForwarder

Write-Host "`nChecking DNS Log..."
Get-ChildItem C:\Windows\System32\dns\dns.log

Write-Host "`nChecking DNS Listening Port..."
netstat -an | findstr :53

Write-Host "`nVerification Complete."