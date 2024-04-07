if status is-interactive
    starship init fish | source
end

if test -x /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
end

set -x PATH "$HOME/.cargo/bin:$PATH"

# Disable the greeting message
set -g fish_greeting
