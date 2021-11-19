[CmdletBinding()]
param ( [Parameter()] [string] $Version)

. $PSScriptRoot/../common.ps1

$a = @("install", "--id", "Oracle.VirtualBox", "--silent")
if ($Version) {
  $a += @("--version", $Version)
}

run "winget" $a