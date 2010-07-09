[ -z "$PS1" ] && return

#aliases
alias ls='ls --color=auto'
alias gs='git status'
alias gd='git diff'
alias gcv='git commit --verbose'
alias ll='ls -l'
alias la='ls -a'
alias dir='ls'
alias gs='git status'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias gcv='git commit --verbose'
alias gd='git diff'
alias tpj='tp -j'
alias e=exit

export GIT_PS1_SHOWDIRTYSTATE=1

#change the prompt
function setPrompt {
    #local GREEN_FG="\[\033[32m\]"
    #local DEFAULT_FG="\033[39m\]"
    local GREEN_FG="$(tput setaf 2)"
    local DEFAULT_FG="$(tput sgr0)"
    local BLUE_FG="$(tput setaf 4)"
    local YELLOW_FG="$(tput setaf 3)"
    PS1="${BLUE_FG}\w\n${DEFAULT_FG}[${GREEN_FG}\u${DEFAULT_FG}@${GREEN_FG}\h${DEFAULT_FG}${YELLOW_FG}\$(__git_ps1)${DEFAULT_FG}]\n> "
}
setPrompt

source ~/linuxfiles/tp_command
source ~/linuxfiles/mvn-color-function.sh

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
export TERM=xterm-256color
#change locale to sv_FI.utf8
export LC_ALL="en_US.utf8"
#ignore same inputs in history
export HISTIGNORE="&"
#add my dir of handy scripts to path
export JAVA_HOME=/usr/lib/jvm/java-6-sun
PATH=$PATH:~/scripts
export PATH

# some silly row for RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
