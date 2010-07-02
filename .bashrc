[ -z "$PS1" ] && return

#aliases
alias ls='ls --color=auto'
alias gs='git status'
alias gd='git diff'
alias gcv='git commit --verbose'
alias ll='ls -l'
alias la='ls -a'
alias dir='ls'
alias e=exit

#change the prompt
function setPrompt {
    #local GREEN_FG="\[\033[32m\]"
    #local DEFAULT_FG="\033[39m\]"
    local GREEN_FG="$(tput setaf 2)"
    local DEFAULT_FG="$(tput setaf 9)"
    local BLUE_FG="$(tput setaf 4)"
    PS1="${BLUE_FG}\w\n${DEFAULT_FG}[${GREEN_FG}\u${DEFAULT_FG}@${GREEN_FG}\h${DEFAULT_FG}]\n> "
}
setPrompt

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
#change locale to sv_FI.utf8
export LC_ALL="en_US.utf8"
#ignore same inputs in history
export HISTIGNORE="&"
#classpath for java
export CLASSPATH=~/dst07
#add my dir of handy scripts to path
PATH=$PATH:~/scripts
export PATH
