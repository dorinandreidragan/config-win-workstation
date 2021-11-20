# Set font to 'Hack Nerd Font'
function loadJson($path) {
  return Get-Content $path | ConvertFrom-Json
}

function setJsonProperty($json, $name, $value) {
  $json | Add-Member -MemberType NoteProperty -Name $name -Value $value -Force
}

function saveJson($json, $path) {
  $json | ConvertTo-Json | Set-Content $path
}

$jsonPath = "$env:APPDATA/Code/User/settings.json" 
$json = loadJson $jsonPath 
setJsonProperty $json "terminal.integrated.fontFamily" "Hack Nerd Font"
saveJson $json $jsonPath