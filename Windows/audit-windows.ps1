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
    Write-Host "   AUDITORIA DE SEGURANÇA - WINDOWS"
    Write-Host "====================================="
    Write-Host "1) Verificar atualizações"
    Write-Host "2) Listar usuários locais"
    Write-Host "3) Listar serviços em execução"
    Write-Host "4) Verificar portas abertas"
    Write-Host "5) Analisar logs do sistema (últimos 50 erros)"
    Write-Host "0) Sair"
    Write-Host "====================================="
    $opt = Read-Host "Escolha uma opção"

    switch ($opt) {
        1 { Write-Host "`n[*] Verificando atualizações..."
            (Get-HotFix | Sort-Object InstalledOn -Descending | Select-Object -First 10) }
        2 { Write-Host "`n[*] Usuários locais:"
            Get-LocalUser }
        3 { Write-Host "`n[*] Serviços em execução:"
            Get-Service | Where-Object {$_.Status -eq "Running"} }
        4 { Write-Host "`n[*] Portas abertas:"
            Get-NetTCPConnection -State Listen }
        5 { Write-Host "`n[*] Últimos 50 erros do log do sistema:"
            Get-EventLog -LogName System -EntryType Error -Newest 50 }
        0 { Write-Host "Saindo..." }
        Default { Write-Host "Opção inválida!" }
    }
    if ($opt -ne 0) { Pause }
} while ($opt -ne 0)

