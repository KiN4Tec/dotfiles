# Initialization

# External Package Managers

# NPM
if test -d "$NPM_CONFIG_PATH"
    set -gx NPM_CONFIG_PREFIX "$HOME/.local/share/npm"
    fish_add_path -pP "$NPM_CONFIG_PATH"
end

# Yarn
if command -sq yarn
    fish_add_path -pP (yarn global bin)
end

# Homebrew
if test -x "/home/linuxbrew/.linuxbrew/bin/brew"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
end

# Cargo
if test -d "$HOME/.cargo/bin"
    fish_add_path -pP "$HOME/.cargo/bin"
end

# Startup

if status is-interactive
    and command -sq starship
    starship init fish | source
end

set -g fish_greeting "Welcome back commander"
