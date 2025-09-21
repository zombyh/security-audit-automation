<#
.SYNOPSIS
    Lista serviços e seus status.
#>

Write-Host "=== Auditoria: Serviços no Windows ===`n"

Get-Service | Sort-Object -Property Status, DisplayName | 
Format-Table -AutoSize DisplayName, Status, StartType

