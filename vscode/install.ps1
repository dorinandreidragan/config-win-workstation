. $PSScriptRoot/../common.ps1

runWinget @( "install", "Microsoft.VisualStudioCode", "--silent") 
& $PSScriptRoot/install-extensions.ps1