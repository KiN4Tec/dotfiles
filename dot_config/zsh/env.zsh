# Prevent duplicate paths
typeset -U path PATH

# External Package Managers

source "$NASHAT_CONFIG_PATH/functions/path_add.bash"

# Cargo
if command -v cargo 2>&1 >/dev/null
then
    path+=("$HOME/.cargo/bin")
fi

# Homebrew
if [ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew";
    export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar";
    export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew";
    path+=("/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin")

    if [ -d "/home/linuxbrew/.linuxbrew/share/info" ] && \
       [[ ":$INFOPATH:" != *":/home/linuxbrew/.linuxbrew/share/info:"* ]]
    then
        INFOPATH="${INFOPATH:+"$INFOPATH:"}/home/linuxbrew/.linuxbrew/share/info"
    fi
fi

# NPM
export NPM_CONFIG_PREFIX="$HOME/.local/share/npm"
path+=("$NPM_CONFIG_PREFIX")

# Yarn
if command -v yarn 2>&1 >/dev/null
then
    path+=("$(yarn global bin)")
fi
