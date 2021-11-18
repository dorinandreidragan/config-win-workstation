. $PSScriptRoot/../common.ps1

$extensionsJson = Get-Content $PSScriptRoot/extensions.json | ConvertFrom-Json
foreach ($extension in $extensionsJson.recommendations) {
  run "code" @("--install-extension", $extension)
}
