# Visual Studio Code
winget install -e Microsoft.VisualStudioCodewinget

# Windows Terminal
winget install -e Microsoft.WindowsTerminal

# Visual Studio 2022
winget install -e Microsoft.VisualStudio.2022.Professional

# git for Windows
winget install -e -h Git.Git 

# WSL 2

# Enable WSL
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Virtual Machine Platform
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

# Restart is needed before wsl version 2 is set

# Install Ubuntu distro
wsl --install -d Ubuntu

# Set WSL 2 as default
wsl --set-default-version 2