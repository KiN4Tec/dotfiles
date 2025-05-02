# External Package Managers

# NPM
export NPM_CONFIG_PREFIX="$HOME/.local/share/npm"
if [ -d NPM_CONFIG_PREFIX ] && [[ ":$PATH:" != *":$NPM_CONFIG_PATH:"* ]]; then
    PATH="$NPM_CONFIG_PATH:$PATH"
fi

# Yarn
[ -n $(command -v yarn) ] && export PATH="$(yarn global bin):$PATH"

# Homebrew
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
fi

# Cargo
[ -d "$HOME/.cargo/bin" ] && PATH="$HOME/.cargo/bin:$PATH"
