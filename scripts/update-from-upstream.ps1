$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$targets = @(
    (Join-Path $repoRoot "src/Octochris/GitHubEnterpriseCloud"),
    (Join-Path $repoRoot "src/Octochris/GitHubApi")
)

if (-not (Get-Command kiota -ErrorAction SilentlyContinue)) {
    throw "Kiota CLI was not found in PATH. Install with: dotnet tool install --global Microsoft.OpenApi.Kiota"
}

foreach ($target in $targets) {
    Write-Host "Updating client from lock file in $target"
    kiota update --clean-output -o $target
}
