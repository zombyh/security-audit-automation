#!/bin/bash
echo "=== Auditoria: Usuários Ativos no Linux ==="
echo

awk -F: '$3 >= 1000 && $3 < 65534 { print $1 }' /etc/passwd

