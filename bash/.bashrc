#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add ~/bin to path.
export PATH="$HOME/bin:$PATH"

# Environment Variables
export EDITOR=vim
export LS_COLORS='di=34:ex=32'

# Colored Less
export LESS='-RgI'
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[03;32m'

alias ls='ls -la --color=auto'
PS1='[\u@\h \W]\$ '
