zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# Source ~/.profile
[[ -f $HOME/.profile ]] && . $HOME/.profile
