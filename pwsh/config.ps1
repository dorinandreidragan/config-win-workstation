Install-Module oh-my-posh -Scope CurrentUser -AcceptLicense -Force
Install-Module posh-git -Scope CurrentUser -AcceptLicense -Force
Install-Module Terminal-Icons -Scope CurrentUser -AcceptLicense -Force

& $PSScriptRoot/set-profile.ps1
& $PSScriptRoot/install-fonts.ps1
