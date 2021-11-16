Import-Module oh-my-posh
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module PSReadline

# Enabling predictive IntelliSense (https://docs.microsoft.com/en-us/powershell/module/psreadline/about/about_psreadline?view=powershell-7.2#predictive-intellisense)
Set-PSReadLineOption -PredictionSource History

# Set oh-my-posh theme
Set-PoshPrompt -Theme amro