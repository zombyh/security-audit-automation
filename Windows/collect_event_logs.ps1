<#
.SYNOPSIS
    Coleta logs de eventos do Windows.
.DESCRIPTION
    Exporta eventos críticos e de erros para arquivo CSV.
#>

Write-Host "=== Auditoria: Coleta de Logs ===`n"

$logPath = "$env:USERPROFILE\Desktop\logs_windows.csv"

Get-WinEvent -FilterHashtable @{LogName='System'; Level=1,2; StartTime=(Get-Date).AddDays(-7)} |
Select-Object TimeCreated, Id, LevelDisplayName, Message |
Export-Csv -Path $logPath -NoTypeInformation -Encoding UTF8

Write-Host "Logs exportados para: $logPath" -ForegroundColor Green

