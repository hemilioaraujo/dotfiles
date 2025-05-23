# BASH
alias ~~='cd ~'
alias -- -='cd -'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias pingu='ping www.uol.com.br'
# PHP
alias pint='vendor/bin/pint'
alias art='php artisan'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sart='sail artisan'
# GIT FLOW
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gffd='git flow feature delete'
alias gfbs='git flow bugfix start'
alias gfbf='git flow bugfix finish'
alias gfbd='git flow bugfix delete'
# GIT
alias gitlog='git log --oneline --graph --all'
alias gitcm='git commit -m'
alias gits='git status'
alias gitst='git stash'
alias gitstl='git stash list'
alias gitstp='git stash pop'
alias gitco='git checkout'
alias gitbr='git branch'
alias gitad='git add'
alias gitdf='git diff'
alias gitdfs='git diff --staged'
alias gitps='git push'
alias gitpl='git pull'
alias gitcl='git config -l'
alias gitcgl='git config --global -l'
# APT
alias apti='sudo apt install'
alias aptr='sudo apt remove'
alias apts='sudo apt-cache search'
alias aptud='sudo apt update'
alias aptug='sudo apt upgrade'
alias aptudg='sudo apt update && sudo apt upgrade'
# DOCKER
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcr='docker compose restart'
alias dps='docker ps'

function mkd() {
    mkdir -p "$@" && cd "$@"
}

function cdrepo(){
    if [ -d "$HOME/Documentos/repositorios/$@" ]; then
        cd "$HOME/Documentos/repositorios/$@"
    elif [ -d "$HOME/Documents/repositorios/$@" ]; then
        cd "$HOME/Documents/repositorios/$@"
    elif [ -d "$HOME/repositorios" ]; then
        cd "$HOME/repositorios/$@"
    else
        echo "O diretório 'repositorios' não foi encontrado em 'Documentos' nem em 'Documents'."
    fi
}

