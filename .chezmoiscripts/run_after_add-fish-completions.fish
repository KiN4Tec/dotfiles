#!/usr/bin/env fish

mkdir -p ~/.config/fish/completions

if command -sq register-python-argcomplete
	and command -sq pipx
	register-python-argcomplete --shell fish pipx > ~/.config/fish/completions/pipx.fish
end

if command -sq starship
	starship completions fish > ~/.config/fish/completions/starship.fish
end
