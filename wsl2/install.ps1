. $PSScriptRoot/../common.ps1

# Enable Virtual Machine Platform
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

# Restart is needed before wsl version 2 is set

# Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -All -NoRestart

# Update Linux Kernel to latest version
# $wslUpdateMsi = "$PSScriptRoot/wsl_update_x64.msi"
# downloadFile "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" $wslUpdateMsi
# try {
#   Start-Process msiexec.exe -Wait -ArgumentList "/I $wslUpdateMsi /quiet"
# }
# catch {
#   Write-Error "WSL Update failed: $($_.Exception.Message)" 
# }
# finally {
#   Remove-Item -Force $PSScriptRoot/wsl_update_x64.msi
# }

# Install Ubuntu distro
run "wsl" @("--install", "-d", "Ubuntu")

# Set WSL 2 as default
run "wsl" @("--set-default-version", "2")