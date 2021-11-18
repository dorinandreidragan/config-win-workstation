Install-Module oh-my-posh -Scope CurrentUser -AcceptLicense
Install-Module posh-git -Scope CurrentUser -AcceptLicense
Install-Module Terminal-Icons -Scope CurrentUser -AcceptLicense

& $PSScriptRoot/set-profile.ps1
& $PSScriptRoot/install-fonts.ps1