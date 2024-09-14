#!/bin/bash

PS1='\n\[\e[32m\]\u\[\e[0m\]@\[\e[94m\]\h\[\e[0m\] in \[\e[36;1m\]\w\n\n\[\e[32m\]\s\[\e[0m\] \[\e[36;1m\]>\[\e[0m\] '

# Use the Starship prompt (if available)
[ -n "$(command -v starship)" ] && eval "$(starship init bash)"
