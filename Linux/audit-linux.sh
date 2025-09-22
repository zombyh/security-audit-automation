#!/bin/bash
# =========================================
# Auditoria de Segurança Linux
# =========================================
# Autor: Marcelo Rocha
# Versão: 1.0
# Descrição: Ferramenta de auditoria básica
# =========================================

while true; do
  clear
  echo "======================================"
  echo "   AUDITORIA DE SEGURANÇA - LINUX"
  echo "======================================"
  echo "1) Verificar atualizações disponíveis"
  echo "2) Listar usuários locais"
  echo "3) Listar serviços em execução"
  echo "4) Verificar portas abertas"
  echo "5) Analisar logs do sistema (últimos 50 erros)"
  echo "0) Sair"
  echo "======================================"
  read -p "Escolha uma opção: " opt

  case $opt in
    1) echo "[*] Verificando atualizações..."
       sudo apt update && sudo apt list --upgradable ;;
    2) echo "[*] Usuários locais do sistema:"
       cut -d: -f1 /etc/passwd ;;
    3) echo "[*] Serviços ativos:"
       systemctl list-units --type=service --state=running ;;
    4) echo "[*] Portas abertas:"
       ss -tuln ;;
    5) echo "[*] Últimos 50 erros de log:"
       journalctl -p err -n 50 ;;
    0) echo "Saindo..."
       exit 0 ;;
    *) echo "Opção inválida!" ;;
  esac

  echo
  read -p "Pressione ENTER para continuar..."
done

