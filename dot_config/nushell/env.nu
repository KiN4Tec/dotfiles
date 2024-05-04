# Initialize Starship
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

# Initialize zoxide
mkdir ~/.local/share/nushell/
zoxide init nushell | save -f ~/.local/share/nushell/zoxide.nu
