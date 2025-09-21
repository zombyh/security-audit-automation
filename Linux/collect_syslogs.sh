#!/bin/bash
echo "=== Auditoria: Coleta de Logs do Sistema ==="
echo

OUTPUT="$HOME/logs_linux.txt"
grep -i "error\|fail\|critical" /var/log/syslog > "$OUTPUT" 2>/dev/null

echo "Logs exportados para: $OUTPUT"

