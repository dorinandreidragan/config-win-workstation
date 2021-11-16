Install-Module oh-my-posh -Scope CurrentUser
Install-Module posh-git -Scope CurrentUser
Install-Module Terminal-Icons -Scope CurrentUser 

& $PSScriptRoot/set-profile.ps1
& $PSScriptRoot/install-fonts.ps1