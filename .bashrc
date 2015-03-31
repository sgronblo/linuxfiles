[ -z "$PS1" ] && return

set -o vi

on_osx() {
    [[ $(uname -s) = 'Darwin' ]]
}

# Source git completion manually if we are on OS X
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ] && on_osx ; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
fi
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ] && on_osx ; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi

#aliases
alias fig='find . | grep'
alias gs='git status'
alias gsu='git submodule update'
alias gd='git diff'
alias gcv='git commit --verbose'
alias ll='ls -l'
alias la='ls -a'
alias dir='ls'
alias gs='git status'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias gcv='git commit --verbose'
alias gd='git diff --no-prefix'
alias tpj='tp -j'
function findfilei() {
    find . -iname "*$1*" | grep -i $1
}
function findfile() {
    find . -name "*$1*" | grep $1
}
alias clj='rlwrap java -cp /Users/sam/projects/clojure/clojure-1.4.0-master-SNAPSHOT.jar clojure.main'

export GIT_PS1_SHOWDIRTYSTATE=1
export CLICOLOR=1

# Source OS X-specific aliases/environment variables
if [ -f ~/linuxfiles/osx_config.sh ] && on_osx ; then
    source ~/linuxfiles/osx_config.sh
fi

#change the prompt
setPrompt() {
    #local GREEN_FG="\[\033[32m\]"
    #local DEFAULT_FG="\033[39m\]"
    local GREEN_FG="$(tput setaf 2)"
    local DEFAULT_FG="$(tput sgr0)"
    local BLUE_FG="$(tput setaf 4)"
    local YELLOW_FG="$(tput setaf 3)"
    PS1="${BLUE_FG}\w \D{%d.%m.%Y %H:%M:%S}\n${DEFAULT_FG}[${GREEN_FG}\u${DEFAULT_FG}@${GREEN_FG}\h${DEFAULT_FG}${YELLOW_FG}\$(__git_ps1)${DEFAULT_FG}]\n> "
}
setPrompt

source ~/linuxfiles/tp_command
source ~/linuxfiles/mvn-color-function.sh

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source /etc/bash_completion
fi
export TERM=xterm-256color
export GREP_OPTIONS="--color=auto"
#change locale to sv_FI.utf8
if on_osx; then
    export LC_ALL="en_US.UTF-8"
else
    export LC_ALL="en_US.utf8"
fi
#ignore same inputs in history
export HISTCONTROL="ignorespace:erasedups"
export HISTSIZE=2000
shopt -s histappend
#add my dir of handy scripts to path
PATH=$PATH:~/linuxfiles/scripts:~/android-sdk-linux_x86/tools:/usr/local/share/npm/bin:~/.cabal/bin
if on_osx ; then
    PATH=$HOME/.nodebrew/current/bin:/Users/a13014/.cabal/bin:/usr/local/bin:/Users/a13014/Library/Haskell/bin:$PATH
fi
export PATH
export ACKRC=.ackrc

if [[ -s /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
    export WORKON_HOME=~/virtualenvs
fi

# source the right rvm function creation script based on rvm being installed system-wide or user-wide
if [[ -s /usr/local/lib/rvm ]]; then
    source /usr/local/lib/rvm
elif [[ -s $HOME/.rvm/scripts/rvm ]]; then
    source $HOME/.rvm/scripts/rvm
fi
