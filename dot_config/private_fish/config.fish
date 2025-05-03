# Initialization

# External Package Managers

# Cargo
if test -d "$HOME/.cargo/bin"
    fish_add_path --append --path "$HOME/.cargo/bin"
end

# Homebrew
if test -x "/home/linuxbrew/.linuxbrew/bin/brew"
    set --global --export HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
    set --global --export HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
    set --global --export HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
    fish_add_path --global --append --path "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin";
    if test -n "$MANPATH[1]"
        set --global --export MANPATH $MANPATH ''
    end
    if not contains "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH
        set --global --export INFOPATH $INFOPATH "/home/linuxbrew/.linuxbrew/share/info"
    end
end

# NPM
set --global --export NPM_CONFIG_PREFIX $HOME/.local/share/npm
if test -d "$NPM_CONFIG_PREFIX"
    fish_add_path --append --path "$NPM_CONFIG_PREFIX"
end

# Yarn
if command -sq yarn
    fish_add_path --append --path (yarn global bin)
end

# Startup

if status is-interactive
    and command -sq starship
    starship init fish | source
end

set --global fish_greeting "Welcome back commander"
