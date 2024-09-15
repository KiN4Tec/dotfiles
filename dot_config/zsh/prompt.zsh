PS1='
%F{2}%n%f@%F{4}%m%f in %F{6}%B%~%f%b

%F{2}%Bzsh%f%b %F{6}%B>%f%b '

command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"

