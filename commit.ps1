param(
    [Parameter(Mandatory=$true)]
    [string]$Message
)

$ErrorActionPreference = "Stop"

try {
    git config user.name "Huarseral"
    git config user.email "fullwingchun@gmail.com"
    git add .
    git commit -m $Message
    Write-Host "✓ Commit realizado: $Message" -ForegroundColor Green
} catch {
    Write-Host "✗ Error en el commit: $_" -ForegroundColor Red
    exit 1
}
