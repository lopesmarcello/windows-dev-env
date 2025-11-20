# Starship prompt (coloca no final do ~/.bashrc)
eval "$(starship init bash)"

# ALIASES
# Atalhos rápidos
alias n='nvim'
alias sudo='sudo '  # permite sudo vim, etc.
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'

# Git (porque ninguém aguenta digitar git toda hora)
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gs='git status'
alias gd='git diff'
alias glog='git log --oneline --decorate --graph'
