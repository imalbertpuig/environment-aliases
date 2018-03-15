### Customized aliases ###

alias vim='nvim'

# git
alias gl='git log '
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias go='git checkout '
alias gf='git diff '
alias gr='git rebase '
alias gk='gitk'
alias gp='git pull '

alias gaa='git add -A'
alias gcg='git commit -m "G"'
alias gca='git commit --amend'
alias gr2='git rebase -i HEAD~2'
alias gr3='git rebase -i HEAD~3'
alias gr4='git rebase -i HEAD~4'
alias gr5='git rebase -i HEAD~5'

alias grod='git rebase origin/develop'
alias grom='git rebase origin/master'
alias gcgca='gcg && gca'
alias gpod='git pull origin develop'
alias gpom='git pull origin master'

# docker
alias dc='docker-compose'
alias dc-up='docker-compose up -d'
alias dc-kill='docker-compose kill'
alias dc-rm='docker-compose rm --force'
alias dc-reset='docker-compose kill && docker-compose rm --force && docker-compose up -d && docker-compose logs -f'
alias dc-logs='docker-compose logs -f'
alias dc-ps='docker-compose ps'
alias dc-off='docker-compose kill && docker-compose rm --force'

dc-enter () { docker exec -ti $1 bash; }
