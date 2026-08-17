Write-Host "Generating DNS Queries..."

$domains = @(
"google.com",
"github.com",
"microsoft.com",
"crowdstrike.com",
"openai.com",
"githubusercontent.com"
)

foreach($domain in $domains)
{
    Write-Host "Querying $domain"
    nslookup $domain
}

Write-Host "`nDNS Traffic Generation Completed."