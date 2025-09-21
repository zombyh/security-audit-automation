<#
.SYNOPSIS
    Lista portas abertas e programas associados.
#>

Write-Host "=== Auditoria: Portas Abertas no Windows ===`n"

try {
    Get-NetTCPConnection | Where-Object { $_.State -eq "Listen" } |
    Format-Table -AutoSize LocalAddress, LocalPort, OwningProcess
} catch {
    Write-Host "Erro ao listar portas: $_" -ForegroundColor Red
}

