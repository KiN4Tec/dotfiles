function fish_prompt
    printf '\n%s%s%s@%s%s' (set_color green) $USER (set_color normal) (set_color blue) (prompt_hostname)
    printf '%s in %s%s%s' (set_color normal) (set_color --bold cyan) (prompt_pwd) (set_color normal)
    printf '\n\n%sfish%s %s>%s ' (set_color --bold green) (set_color normal) (set_color cyan) (set_color normal)
end

