# Meu Ambiente de Desenvolvimento Windows

Este repositório é um backup das minhas configurações de desenvolvimento no Windows.

## Estrutura

- `.config/`: Contém configurações de aplicativos como Wezterm, Starship, etc.
- `.bashrc`, `.bash_profile`: Arquivos de perfil do shell.
- `.gitconfig`: Configurações do Git.
- `nvim/`: Para as configurações do Neovim.

## Pré-requisitos

Para utilizar este ambiente de desenvolvimento, você precisará ter os seguintes softwares instalados no seu sistema Windows:

-   **Git**: Essencial para versionamento de código e para clonar este repositório.
-   **PowerShell**: A maioria dos comandos de configuração e restauração são baseados em PowerShell.
-   **Neovim**: Para usar as configurações de editor fornecidas.
-   **Scoop**: Um gerenciador de pacotes para Windows, útil para instalar e gerenciar as ferramentas de desenvolvimento. (Embora não explicitamente usado nos scripts de link simbólico, é uma ferramenta comum neste tipo de ambiente).
-   **Wezterm**: Terminal altamente configurável, cujas configurações são incluídas.
-   **Starship**: Prompt customizável para o shell.

## Como Restaurar

A forma recomendada de restaurar essas configurações é usando links simbólicos (Symbolic Links) para que você possa manter este repositório como a "fonte da verdade" e atualizar suas configurações com `git pull`.

**Exemplo (usando PowerShell como Administrador):**

```powershell
# Exemplo para o wezterm
Remove-Item $env:USERPROFILE\.config\wezterm\wezterm.lua -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path $env:USERPROFILE\.config\wezterm\wezterm.lua -Target $PWD\.config\wezterm\wezterm.lua

# Exemplo para o .gitconfig
Remove-Item $env:USERPROFILE\.gitconfig -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path $env:USERPROFILE\.gitconfig -Target $PWD\.gitconfig
```

## ⚠️ Segurança

**NUNCA** adicione arquivos sensíveis a este repositório. Chaves de API, senhas, chaves SSH privadas (`id_rsa`, `id_ed25519`, etc.) não devem ser versionadas. O arquivo `.gitignore` já está configurado para ignorar os padrões mais comuns.

## Neovim

As configurações do Neovim já estão incluídas na pasta `nvim/` deste repositório. Para utilizá-las, crie um link simbólico conforme o exemplo abaixo:

```powershell
# (Execute como Administrador)
# Primeiro, remova ou faça backup da sua pasta nvim existente
Remove-Item $env:LOCALAPPDATA\nvim -Recurse -Force -ErrorAction SilentlyContinue
# Crie o link
New-Item -ItemType Junction -Path $env:LOCALAPPDATA\nvim -Target $PWD\nvim
```

