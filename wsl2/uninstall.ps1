# Uninstall Ubuntu distro
run "wsl" @("--unregister", "Ubuntu")

# Disable WSL
Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart

# Enable Virtual Machine Platform
# Restart is needed
Disable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
