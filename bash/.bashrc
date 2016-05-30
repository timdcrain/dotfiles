#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
export EDITOR=vim
export LS_COLORS='di=34:ex=32'

alias ls='ls -la --color=auto'
PS1='[\u@\h \W]\$ '
