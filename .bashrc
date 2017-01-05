# ~/.bashrc: executed by bash(1) for non-login shells.jG

# Note: PS1 and umask are already set in /etc/profile. You should  need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
export VISUAL=vim
export EDITOR=$VISUAL

set completion-ignore-case On
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=$PATH:$JAVA_HOME/bin:/opt/apache-maven-3.3.9/bin
#export PATH=$JAVA_HOME/bin:$PATH
#export PATH=$HOME/local/bin:$PATH

HISTSIZE=5000
HISTFILESIZE=1000000
CLICOLOR=1

FIGNORE=.class:.out:.tst:.cmp
export TERM="xterm-256color"

CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:~/libs/cppLibs/dlib-18.13
export CPLUS_INCLUDE_PATH
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
#export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/opt/eclipse:/opt/maven
#sets the Mail Environment Variable
settitle() {
    printf "\033k$1\033\\"
}

ssh() {
    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux"  ]; then
        tmux rename-window "$*"
        command ssh "$@"
        tmux set-window-option automatic-rename "on" 1>/dev/null
    else
        command ssh "$@"
    fi

}

tmux new-session -A -s main
