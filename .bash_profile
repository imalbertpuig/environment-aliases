# DOCKER
alias dc='docker-compose'
alias dc-up='docker-compose up -d'
alias dc-kill='docker-compose kill'
alias dc-rm='docker-compose rm --force'
alias dc-reset='docker-compose kill && docker-compose rm --force && docker-compose up -d && docker-compose logs -f'
alias dc-logs='docker-compose logs -f'
alias dc-ps='docker-compose ps'
alias dc-off='docker-compose kill && docker-compose rm --force'
alias dockerstop='docker stop $(docker ps -a -q)'
alias dockerrm='docker rm $(docker ps -a -q)'
dc-enter () { docker exec -ti $1 bash; }
#alias dc-up-bo='docker-compose -f docker-compose-bo.yml up -d'

# VIM
alias vim='nvim'

# RECURSIVE "CD.." TO GO BACK
function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'

# CHANGE TERMINAL COLORS
export CLICOLOR=1 # enables coloring of your terminal
export LSCOLORS=GxFxCxDxBxegedabagaced # specifies how to color specific items

# git
alias gl='git log '
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias go='git checkout '
alias gf='git diff '
alias gr='git rebase '
alias gp='git pull '

alias glf='git log --follow -p --'
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

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# ANDROID SDK
export ANDROID_HOME="/usr/local/Caskroom/android-sdk/Android"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="/usr/local/sbin:$PATH"                                                                                                                                              
# Language: https://stackoverflow.com/questions/30479607/explain-the-effects-of-export-lang-lc-ctype-lc-all                                                                      
export LC_CTYPE=en_US.UTF-8                                                                                                                                                      
export LC_ALL=en_US.UTF-8 
