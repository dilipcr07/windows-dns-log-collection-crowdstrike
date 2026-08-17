Write-Host "Restarting Services..."

Restart-Service DNS

Write-Host "DNS Restarted"

Get-Service *collector* | Restart-Service

Write-Host "Collector Restarted"

Write-Host "Completed."