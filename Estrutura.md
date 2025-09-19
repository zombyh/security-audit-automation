security-audit-automation/
│
├── README.md               # Explica o projeto e como usar
├── LICENSE                 # Licença (MIT, GPL, etc.)
├── windows/                # Scripts para Windows (PowerShell)
│   ├── check_updates.ps1
│   ├── check_users.ps1
│   ├── check_services.ps1
│   ├── check_open_ports.ps1
│   └── collect_event_logs.ps1
├── linux/                  # Scripts para Linux (Bash)
│   ├── check_updates.sh
│   ├── check_users.sh
│   ├── check_services.sh
│   ├── check_open_ports.sh
│   └── collect_syslogs.sh
└── docs/
    ├── usage_guide.md      # Guia detalhado de uso
    └── output_examples.md  # Exemplos de saídas dos scripts
