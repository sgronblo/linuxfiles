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

# Git aliases
alias gpr='git pull --rebase'
alias gs='git status'
alias gsu='git submodule update'
alias gd='git diff --no-prefix'
alias gcv='git commit --verbose'

# Other aliases
alias docker-clean='docker rm $(docker ps --filter status=exited -q); docker rmi $(docker images -q --filter dangling=true)'
alias ll='ls -l'
alias la='ls -a'
alias fig='find . | grep'
alias tpj='tp -j'
function findfilei() {
    find . -iname "*$1*" | grep -i $1
}
function findfile() {
    find . -name "*$1*" | grep $1
}
alias clj='rlwrap java -cp /Users/sam/projects/clojure/clojure-1.4.0-master-SNAPSHOT.jar clojure.main'
alias nvm-switch='nvm use $(jq ".engines.node" --raw-output package.json)'

export GIT_PS1_SHOWUPSTREAM=verbose,name
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export CLICOLOR=1

# Source OS X-specific aliases/environment variables
if [ -f ~/linuxfiles/osx_config.sh ] && on_osx ; then
    source ~/linuxfiles/osx_config.sh
fi

#change the prompt
setPrompt() {
    local GREEN_FG="$(tput setaf 2)"
    local DEFAULT_FG="$(tput sgr0)"
    local BLUE_FG="$(tput setaf 4)"
    local YELLOW_FG="$(tput setaf 3)"
    PS1_PREFIX="${BLUE_FG}\w \D{%d.%m.%Y %H:%M:%S}\n${DEFAULT_FG}[${GREEN_FG}\u${DEFAULT_FG}@${GREEN_FG}\h${DEFAULT_FG}${YELLOW_FG}"
    PS1_SUFFIX="${DEFAULT_FG}]\n> "
    PROMPT_COMMAND="__git_ps1 \"${PS1_PREFIX}\" \"${PS1_SUFFIX}\""
}
setPrompt

source ~/linuxfiles/tp_command
#source ~/linuxfiles/mvn-color-function.sh

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

PATH=$PATH:~/scripts:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:~/bin:~/.local/bin:~/.cabal/bin

export PATH

export ACKRC=.ackrc
export JAVA_OPTS=-XX:MaxPermSize=256M

if [[ -s /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
    export WORKON_HOME=~/virtualenvs
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
