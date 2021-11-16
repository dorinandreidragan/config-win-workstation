. $PSScriptRoot/../common.ps1

$installPath = "$env:ProgramFiles/Microsoft Visual Studio/2022" 

$wingetArgs = @(
  "install",
  "Microsoft.VisualStudio.2022.Professional",
  "--silent"
)

$overrideArgs = @(
  "--installPath", $installPath, 
  "--wait", 
  "--quiet", 
  "--add", "Microsoft.VisualStudio.Workload.CoreEditor", 
  "--add", "Microsoft.VisualStudio.Workload.ManagedDesktop", 
  "--add", "Microsoft.VisualStudio.Workload.NetWeb", 
  "--includeRecommended", 
  "--norestart"
)

runWinget $wingetArgs $overrideArgs
