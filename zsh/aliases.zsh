# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias h='history'
alias c='clear'

# Directory
alias md='mkdir -p'
alias rd='rmdir'
alias del='rm -rf'

# Git
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gps='git push'
alias gc='git commit -m'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --oneline --graph'
alias grb='git rebase'
alias gst='git stash'
alias gstp='git stash pop'

# Docker
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias dex='docker exec -it'
alias dprune='docker system prune -af'

# Kubernetes
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgn='kubectl get nodes'
alias kdp='kubectl describe pod'
alias kds='kubectl describe service'
alias kdn='kubectl describe node'

# AWS
alias awsw='aws who-am-i'
alias awsp='aws configure list-profiles'
alias awsl='aws configure list'
alias awsr='aws configure list-regions'

# Terraform
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tfw='terraform workspace'
alias tfwl='terraform workspace list'
alias tfws='terraform workspace select'

# System
alias df='df -h'
alias du='du -h'
alias free='free -h'
alias top='htop'
alias ports='netstat -tulanp'
alias path='echo -e ${PATH//:/\\n}'

# Development
alias py='python3'
alias pip='pip3'
alias npml='npm list --depth=0'
alias npmg='npm list -g --depth=0'
alias nr='npm run'
alias ni='npm install'
alias nid='npm install --save-dev'

# Utility
alias timestamp='date +"%Y%m%d_%H%M%S"'
alias weather='curl wttr.in'
alias ip='curl ifconfig.me'
alias ports='netstat -tulanp'
alias reload='source ~/.zshrc'
