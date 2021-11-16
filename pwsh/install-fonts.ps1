. $PSScriptRoot/../common.ps1

$fontsFolder = "$PSScriptRoot/fonts"

function createFontsFolder() {
  if (-Not (Test-Path $fontsFolder)) {
    New-Item -ItemType Directory -Force -Path $fontsFolder
  }
}

function downloadFonts() {
  downloadFile https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip $fontsFolder/Meslo.zip
}

function unzipFonts() {
  Expand-Archive -Path $PSScriptRoot/fonts/Meslo.zip -DestinationPath $fontsFolder
}

function removeFontsFolder() {
  Remove-Item -Path $fontsFolder -Recurse -Force
}

function installFonts() {
  $dest = (New-Object -ComObject Shell.Application).Namespace(0x14)
  Get-ChildItem -Path "$fontsFolder/*" -Include '*.ttf', '*.ttc', '*.otf' -Recurse | ForEach-Object {
    If (-not(Test-Path "C:\Windows\Fonts\$($_.Name)")) {
      $font = "$fontsFolder/$($_.Name)"
      $dest.CopyHere($font, 0x10)
    }
  }
}


createFontsFolder
try {
  downloadFonts
  unzipFonts
  installFonts
}
finally {
  removeFontsFolder
}