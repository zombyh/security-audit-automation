#!/bin/bash
echo "=== Auditoria: Serviços em Execução no Linux ==="
echo

systemctl list-units --type=service --state=running

