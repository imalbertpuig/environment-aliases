# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/apuig/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# MANUAL
# https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961
# https://github.com/Powerlevel9k/powerlevel9k/wiki/Stylizing-Your-Prompt#double-lined-prompt

# Shorter prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

# New line after each prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Change color of warning git status
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’

# Colorise the top Tabs of Iterm2 with the same color as background
# Just change the 18/26/33 wich are the rgb values
echo -e "\033]6;1;bg;red;brightness;18\a"
echo -e "\033]6;1;bg;green;brightness;26\a"
echo -e "\033]6;1;bg;blue;brightness;33\a"

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ALIASES

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
alias vim-config='vim ~/.config/nvim/init.vim'
alias vim-dir='cd /Users/apuig/.vim/plugged'

# ITERM
alias iterm-config='vim ~/.zshrc'

# vlc
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# RECURSIVE "CD.." TO GO BACK
function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'

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
alias glfe='git log --author="Eduard" --follow -p --'
alias glfj='git log --author="Jordi" --follow -p --'
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
alias glg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

# Language: https://stackoverflow.com/questions/30479607/explain-the-effects-of-export-lang-lc-ctype-lc-all
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

### START ANDROID SDK

# Set JAVA version
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_221`
# Add that to the global PATH variable
export PATH=${JAVA_HOME}/bin:$PATH
# Set Android_HOME
export ANDROID_HOME=~/Library/Android/sdk
# Add the Android SDK to the ANDROID_HOME variable
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
# Set GRADLE_HOME
export GRADLE_HOME=/usr/local/opt/gradle/
export PATH=$PATH:$GRADLE_HOME/bin

### END ANDROID SDK
