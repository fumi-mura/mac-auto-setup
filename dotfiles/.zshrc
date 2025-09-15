# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# Terminal
source ~/.zsh/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{cyan}Fumis MBA%f %~ %F{red}$(__git_ps1 "(%s)")%f \$ '

# Git
export PATH=/usr/local/bin/git:$PATH

# direnv
eval "$(direnv hook zsh)"

# Node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Alias
## Linux
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias la='ls -la'
## Git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gc='git commit -m'
alias gca='git commit --amend -m'
alias gst='git status'
alias gsw='git switch'
alias gswc='git switch -c'
## Docker
alias d='docker'
alias de='docker exec -it'
alias dil='docker image ls'
alias drm='docker rm'
alias dpa='docker ps -a'
alias dc='docker-compose'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dip='docker image prune'
alias dcp='docker container prune'
alias dsp='docker system prune --volumes'
## Terraform
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfpt='terraform plan -target'
alias tfa='terraform apply'
alias tfat='terraform apply -target'
## Terragrunt
alias tg='terragrunt'
alias tgi='terragrunt init --backend-bootstrap'
alias tgf='terragrunt hclfmt'
alias tgap='terragrunt run-all plan'
alias tgaa='terragrunt run-all apply'

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
