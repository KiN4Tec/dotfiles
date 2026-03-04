# Interactive session initialization

if status is-interactive
    and command -sq starship
    starship init fish | source
end

set --global fish_greeting "Welcome back commander"
