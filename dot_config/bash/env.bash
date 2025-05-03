# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# External Package Managers

source "$NASHAT_CONFIG_PATH/functions/path_append.bash"

# Cargo
if command -v cargo 2>&1 >/dev/null
then
    path_append "$HOME/.cargo/bin"
fi

# Homebrew
if [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew";
    export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar";
    export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew";
    path_append "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin"

    if [ -d "/home/linuxbrew/.linuxbrew/share/info" ] && \
       [[ ":$INFOPATH:" != *":/home/linuxbrew/.linuxbrew/share/info:"* ]]
    then
        INFOPATH="${INFOPATH:+"$INFOPATH:"}/home/linuxbrew/.linuxbrew/share/info"
    fi
fi

# NPM
export NPM_CONFIG_PREFIX="$HOME/.local/share/npm"
path_append "$NPM_CONFIG_PREFIX"

# Yarn
if command -v yarn 2>&1 >/dev/null
then
    path_append "$(yarn global bin)"
fi
