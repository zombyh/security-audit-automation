<#
.SYNOPSIS
    Lista usuários e grupos no Windows.
.DESCRIPTION
    Mostra usuários locais e grupos aos quais pertencem.
#>

Write-Host "=== Auditoria: Usuários e Grupos ===`n"

try {
    Get-LocalUser | Format-Table -AutoSize Name, Enabled, LastLogon
    Write-Host "`n=== Grupos Locais ===`n"
    Get-LocalGroup | Format-Table -AutoSize Name, Description
} catch {
    Write-Host "Erro ao obter usuários/grupos: $_" -ForegroundColor Red
}

