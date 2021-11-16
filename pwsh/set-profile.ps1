$profileFolder = "$($env:USERPROFILE)/Documents/PowerShell"
$profileFilePath = "$profileFolder/Microsoft.PowerShell_profile.ps1" 
if (-Not (Test-Path $profileFolder)) {
    New-Item -ItemType Directory -Force -Path $profileFolder
}
Copy-Item -Force -Path $PSScriptRoot/templates/Microsoft.PowerShell_profile.ps1 -Destination $profileFilePath 