# common
& $PSScriptRoot/windows-terminal/install.ps1
& $PSScriptRoot/git/install.ps1

# development
& $PSScriptRoot/vscode/install.ps1
& $PSScriptRoot/vs2022/install.ps1
# Run installer for wsl2 separately because a restart is needed.
# For the moment this step should be manually done.
# & $PSScriptRoot/wsl2/install.ps1

# diagrams
& $PSScriptRoot/drawio/install.ps1

# devops
& $PSScriptRoot/pwsh/config.ps1
& $PSScriptRoot/vagrant/install.ps1
# Install version 6.1.26 because version 6.1.28 doesn't 
# work when VirtualPlatform is enabled (for WSL2)
& $PSScriptRoot/virtualbox/install.ps1 -Version 6.1.26

# open-ssh
& $PSScriptRoot/open-ssh/install.ps1