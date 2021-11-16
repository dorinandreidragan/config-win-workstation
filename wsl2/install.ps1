. $PSScriptRoot/../common.ps1

# Enable Virtual Machine Platform
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

# Restart is needed before wsl version 2 is set

# Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -All -NoRestart

# Install Ubuntu distro
run "wsl" @("--install", "-d", "Ubuntu")

# Set WSL 2 as default
run "wsl" @("--set-default-version", "2")