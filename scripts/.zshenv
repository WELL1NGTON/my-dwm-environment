# Function from: https://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
pathappend() {
    for ARG in "$@"
    do
        if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
            PATH="${PATH:+"$PATH:"}$ARG"
        fi
    done
}

# Function from: https://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
pathprepend() {
    # for ((i=$#; i>0; i--));
    for ARG in "$@"
    do
        # ARG=${!i} # This part only works in bash...
        if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
            PATH="$ARG${PATH:+":$PATH"}"
        fi
    done
}

# GTK
export GTK_THEME=Adwaita:dark
# export gtk-application-prefer-dark-theme=true

# PATH
pathappend "/var/lib/flatpak/exports/bin"
pathprepend "$HOME/bin" "$HOME/.local/bin"

# General
export TERM=alacritty
export BROWSER=google-chrome-stable
export MAIL=thunderbird
export EDITOR=nvim

