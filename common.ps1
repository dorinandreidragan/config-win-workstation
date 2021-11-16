function run($exec, $arguments) {
  Write-Host -ForegroundColor Green "$exec $arguments"
  try {
    & $exec $arguments
  }
  catch {
    Write-Host -ForegroundColor Red "$($_.Exception.Message)"
    exit 1
  }
}

function runWinget($wingetArgs, $overrideArgs) {
  $a = @()
  $a += $wingetArgs
  if ($overrideArgs) {
    $a += @(
      "--override", "`"$($overrideArgs -join " ")`""
    )
  }
  run "winget" $a
}

function downloadFile($uri, $outFile) {
  Invoke-WebRequest -Uri $uri -OutFile $outFile
}