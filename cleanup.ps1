# common
& $PSScriptRoot/windows-terminal/uninstall.ps1
& $PSScriptRoot/git/uninstall.ps1

# development
& $PSScriptRoot/vscode/uninstall.ps1
& $PSScriptRoot/vs2022/uninstall.ps1
# Comment out the WSL2 uninstaller for now.
# & $PSScriptRoot/wsl2/uninstall.ps1

# devops
& $PSScriptRoot/vagrant/uninstall.ps1
& $PSScriptRoot/virtualbox/uninstall.ps1
