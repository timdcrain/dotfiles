#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
if [[ -f /usr/share/bash-completion/bash_completion ]]; then
    source /usr/share/bash-completion/bash_completion
fi

# Source ~/.profile
[[ -f $HOME/.profile ]] && . $HOME/.profile

PS1='[\u@\h \W]\$ '
