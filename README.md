# 🛡️ Auditoria Fácil

Ferramenta gratuita de auditoria de sistemas voltada para pequenas empresas e profissionais que precisam de relatórios rápidos e objetivos sobre segurança e conformidade.

Este projeto reúne diversos scripts em uma única interface (menu interativo), disponível em duas versões:

* **Linux** 🐧
* **Windows** 🪟

---

## Funcionalidades

1. Verificar atualizações disponíveis  
2. Listar usuários locais  
3. Listar serviços em execução  
4. Verificar portas abertas  
5. Analisar logs do sistema (últimos 50 erros)  
0. Sair
   
---

## 🎯 Público-Alvo

Pequenas empresas e profissionais de TI que precisam de uma solução **simples, gratuita e acessível** para realizar auditorias sem depender de ferramentas caras ou complexas.

---

## 📦 Instalação

### 🔹 Linux

Clone o repositório e dê permissão de execução:

```bash
git clone https://github.com/zombyh/security-audit-automation.git
cd security-audit-automation/Linux
chmod +x audit-linux.sh
./audit-linux.sh
```

### 🔹 Windows

No PowerShell como administrador:

```powershell
winget update
winget install git.git
cd C:\Users\Seu_usuário\Downloads
git clone https://github.com/zombyh/security-audit-automation.git
cd .\security-audit-automation\Windows
Set-ExecutionPolicy Unrestricted # Libera a execução do script, use com cuidado!
.\audit-windows.ps1
Set-ExecutionPolicy Restricted # Bloqueia novamente a execução de scripts por segurança. 
```

---

## 📊 Exemplo de Uso

Ao rodar o script, um menu será exibido:

```
=== AUDITORIA FÁCIL ===
1. Verificar atualizações  
2. Listar usuários locais  
3. Listar serviços em execução  
4. Verificar portas abertas  
5. Analisar logs do sistema (últimos 50 erros)  
0. Sair  
```

Basta escolher a opção desejada e aguardar a geração do relatório.

---

## 🤝 Contribuições

Sinta-se à vontade para contribuir com melhorias, novos módulos ou otimizações.
Pull requests são bem-vindos!

---

## 📜 Licença

Este projeto é licenciado sob a [MIT License](LICENSE).
