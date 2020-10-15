#
# ~/.bash_profile
#

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Launch the display manager if this is tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    XKB_DEFAULT_LAYOUT=us exec $DISPLAY_MANAGER
fi
