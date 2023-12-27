# PowerShell Script to Create an Exchange Transport Rule to alert on messages sent to VX-Underground

# Define the recipient domain to monitor
$TargetDomain = "vx-underground.org"

# Define the email address for approval forwarding
$AdminEmail = "admin@example.com"

$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential

# Create the new transport rule
New-TransportRule -Name "VXUG Email Detection" `
    -Comments "Rule to forward emails sent to $TargetDomain to $AdminEmail for review." `
    -Enabled $true `
    -RecipientAddressContainsWords $TargetDomain `
    -ModerateMessageByUser $AdminEmail