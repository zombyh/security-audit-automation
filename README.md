# Security Audit Automation

Scripts para automatizar auditorias de segurança em ambientes Windows e Linux utilizando **PowerShell** e **Bash**.

## 🚀 Objetivo
Fornecer uma solução prática e de baixo custo para pequenas organizações realizarem auditorias de segurança de forma rápida, confiável e repetível.

## 📋 Funcionalidades
- Verificação de atualizações do sistema
- Listagem de usuários ativos
- Checagem de serviços em execução
- Identificação de portas abertas
- Coleta de logs de eventos do sistema

## 📂 Estrutura
- `Windows/` → Scripts para Windows (PowerShell)
- `Linux/` → Scripts para Linux (Bash)
- `Docs/` → Documentação detalhada

## 🛠 Pré-requisitos
- **Windows**: PowerShell 5+ (nativo) ou PowerShell 7
- **Linux**: Bash 4+ (nativo)
- Permissões administrativas para execução de alguns scripts

## 📦 Como usar

No Windows pode ser necessário liberar a execução dos scripts:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
No Linux execute os comandos a seguir:

```bash
git clone https://github.com/zombyh/security-audit-automation.git
cd security-audit-automation/Linux
chmod +x *.sh
bash nome_do_script.sh

