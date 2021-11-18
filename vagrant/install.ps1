. $PSScriptRoot/../common.ps1

run "winget" @("install", "--id", "Hashicorp.Vagrant", "--silent")
[Environment]::SetEnvironmentVariable("VAGRANT_HOME", "d:/vagrant", "Machine")