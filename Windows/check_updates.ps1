<#
.SYNOPSIS
    Verifica atualizações instaladas no Windows.
.DESCRIPTION
    Lista as atualizações instaladas, ordenadas por data, mostrando KB, descrição e data.
    Requer execução com permissões administrativas.
.EXAMPLE
    PS C:\> .\check_updates.ps1
#>

Write-Host "=== Auditoria: Atualizações Instaladas no Windows ===`n"

try {
    $updates = Get-HotFix | Sort-Object -Property InstalledOn -Descending
    if ($updates) {
        $updates | Format-Table -AutoSize Source, Description, HotFixID, InstalledOn
    } else {
        Write-Host "Nenhuma atualização encontrada." -ForegroundColor Yellow
    }
} catch {
    Write-Host "Erro ao obter atualizações: $_" -ForegroundColor Red
}

