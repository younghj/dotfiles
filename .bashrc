# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
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
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
#export PATH=$PATH:$JAVA_HOME/bin
export PATH=$JAVA_HOME/bin:$PATH
#export PATH=$HOME/local/bin:$PATH

HISTSIZE=5000
HISTFILESIZE=1000000
CLICOLOR=1

shopt -s extglob 
FIGNORE=.class:.out:.tst:.cmp
export TERM="xterm-256color"

CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:~/libs/cppLibs/dlib-18.13
export CPLUS_INCLUDE_PATH
#sets the Mail Environment Variable
MAIL=/var/spool/mail/john && export MAIL

tmux new-session -A -s main
