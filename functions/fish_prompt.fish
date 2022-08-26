function fish_prompt
    set -q fish_prompt_pwd_dir_length
    or set -lx fish_prompt_pwd_dir_length 0
    set gitprompt (fish_git_prompt)
    set gitbgcolor (set_color -b normal)
    set gitfgcolor (set_color magenta)
    set spacer " "
    if test -z $gitprompt
        set gitprompt ""
    else
        set gitbgcolor (set_color -b yellow)
        set gitfgcolor (set_color magenta)
        set spacer ""
    end

    printf "%s%s %s@%s %s%s%s%s %s %s%s%s%s%s" \
        (set_color -b black) (set_color white) $USER $hostname (set_color -b magenta) (set_color black) \
        (set_color -b magenta) (set_color black) (prompt_pwd) $gitbgcolor $gitfgcolor $spacer
    if test -n $gitprompt
        printf "%s%s%s %s%s%s%s " (set_color -b yellow) (set_color black) $gitprompt (set_color -b normal) (set_color yellow) \
            (set_color -b normal) (set_color normal)
    end
end
