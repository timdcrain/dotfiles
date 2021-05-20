# .profile
#
# This was adapted from /etc/profile for use in a user's home directory.

# Append "$1" to $PATH when not already in.
# This function API is accessible to scripts in ~/.profile.d
append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
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
