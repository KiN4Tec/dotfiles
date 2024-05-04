$env.config = {
    buffer_editor: "nano",
    show_banner: false,

    rm: {
        always_trash: true
    }
}

# Aliases
alias cd.. = cd ..
alias la = ls -a
alias ll = ls -l
alias lla = ls -la

# Load the starship prompt
use ~/.cache/starship/init.nu

# Load zoxide
source ~/.local/share/nushell/zoxide.nu
