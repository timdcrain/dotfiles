# .profile
#
# This was adapted from /etc/profile for use in a user's home directory.

# These functions are accessible to scripts in ~/.profile.d

# Append "$1" to $PATH when not already in.
append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

# Prepend "$1" to $PATH when not already in.
append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="$1${PATH:+:$PATH}"
    esac
}

# Force PATH to be environment
export PATH

# Load profiles from ~/.profile.d
if test -d $HOME/.profile.d/; then
    for profile in $HOME/.profile.d/*; do
        test -r "$profile" && . "$profile"
    done
    unset profile
fi

# Unload our profile API functions
unset -f append_path
unset -f prepend_path
