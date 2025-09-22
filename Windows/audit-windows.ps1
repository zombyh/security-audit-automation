<# 
=========================================
 Auditoria de Segurança Windows
 Autor: Marcelo Rocha
 Versão: 1.0
 Descrição: Ferramenta de auditoria básica
=========================================
#>

do {
    Clear-Host
    Write-Host "====================================="
    Write-Host "   AUDITORIA DE SEGURANCA - WINDOWS"
    Write-Host "====================================="
    Write-Host "1) Verificar atualizacoes"
    Write-Host "2) Listar usuarios locais"
    Write-Host "3) Listar servicos em execucao"
    Write-Host "4) Verificar portas abertas"
    Write-Host "5) Analisar logs do sistema (ultimos 50 erros)"
    Write-Host "0) Sair"
    Write-Host "====================================="
    $opt = Read-Host "Escolha uma opcao"

    switch ($opt) {
        1 { Write-Host "`n[*] Verificando atualizacoes..."
            (Get-HotFix | Sort-Object InstalledOn -Descending | Select-Object -First 10) }
        2 { Write-Host "`n[*] Usuarios locais:"
            Get-LocalUser }
        3 { Write-Host "`n[*] Servicos em execucao:"
            Get-Service | Where-Object {$_.Status -eq "Running"} }
        4 { Write-Host "`n[*] Portas abertas:"
            Get-NetTCPConnection -State Listen }
        5 { Write-Host "`n[*] Ultimos 50 erros do log do sistema:"
            Get-EventLog -LogName System -EntryType Error -Newest 50 }
        0 { Write-Host "Saindo..." }
        Default { Write-Host "Opcao invalida!" }
    }
    if ($opt -ne 0) { Pause }
} while ($opt -ne 0)

