# Initialization

if test -x /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
end

if test -d "$HOME/.cargo/bin"
    fish_add_path -pP "$HOME/.cargo/bin"
end

# Startup

if status is-interactive
    and command -sq starship
    starship init fish | source
end

set -g fish_greeting "Welcome back commander"

