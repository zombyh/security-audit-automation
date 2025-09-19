#!/bin/bash
# ---------------------------------------------------------
# Script: check_updates.sh
# Objetivo: Verificar atualizações disponíveis no sistema Linux
# Compatibilidade: Debian/Ubuntu e derivados
# Uso: bash check_updates.sh
# ---------------------------------------------------------

echo "=== Auditoria: Atualizações Disponíveis no Linux ==="
echo

# Verifica se o usuário é root
if [ "$EUID" -ne 0 ]; then
    echo "Por favor, execute como root."
    exit 1
fi

# Atualiza a lista de pacotes
apt update -qq

# Lista pacotes atualizáveis
UPDATES=$(apt list --upgradable 2>/dev/null | grep -v Listing)

if [ -n "$UPDATES" ]; then
    echo "Pacotes com atualização disponível:"
    echo "$UPDATES"
else
    echo "Nenhuma atualização disponível."
fi

