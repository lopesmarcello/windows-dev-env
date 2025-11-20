# Meu Ambiente de Desenvolvimento Windows

Este repositório é um backup das minhas configurações de desenvolvimento no Windows.

## Estrutura

- `.config/`: Contém configurações de aplicativos como Wezterm, Starship, etc.
- `profile/`: Contém arquivos de perfil de shell como `.bashrc` e `.bash_profile`.
- `git/`: Configurações do Git.
- `nvim/`: (Placeholder) Para as configurações do Neovim.

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

A configuração do Neovim não foi encontrada automaticamente. O local padrão é `C:\Users\<seu-usuario>\AppData\Local\nvim`.

Copie sua configuração do Neovim para a pasta `nvim` neste repositório. Para restaurar, crie um link simbólico:

```powershell
# (Execute como Administrador)
# Primeiro, remova ou faça backup da sua pasta nvim existente
Remove-Item $env:LOCALAPPDATA\nvim -Recurse -Force -ErrorAction SilentlyContinue
# Crie o link
New-Item -ItemType Junction -Path $env:LOCALAPPDATA\nvim -Target $PWD\nvim
```

## Próximos Passos

1.  Initialize um repositório Git: `git init`
2.  Adicione todos os arquivos: `git add .`
3.  Faça o commit inicial: `git commit -m "Commit inicial do ambiente de desenvolvimento"`
4.  Adicione um repositório remoto: `git remote add origin <URL_DO_SEU_REPOSITORIO_NO_GITHUB>`
5.  Envie para o GitHub: `git push -u origin master`
