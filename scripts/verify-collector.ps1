Write-Host "==============================="
Write-Host "LOGSCALE COLLECTOR VERIFICATION"
Write-Host "==============================="

Write-Host "`nCollector Service"

Get-Service *collector*

Write-Host "`nCollector Process"

Get-Process *collector*

Write-Host "`nConfiguration"

Test-Path "C:\Program Files\CrowdStrike\LogScale Collector\config.yaml"

Write-Host "`nVerification Completed"