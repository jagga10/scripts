
param
(
    [Parameter (Mandatory = $false)]
    [object]
    $webhookData
)

$webhookBodyObject = ConvertFrom-JSON -InputObject $webhookData.RequestBody

Invoke-RestMethod -Method post -Uri $webhookBodyObject.CallBackUrl

write-output "YES ITS WORKING"
