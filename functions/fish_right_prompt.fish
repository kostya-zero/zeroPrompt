function fish_right_prompt
    set stat "+"
    set statcolor brgreen
    if test $status -eq 0
        set stat "+"
        set statcolor brgreen
    else
        set stat "U"
        set statcolor brred
    end

    printf "%s%s%s %s %s%s%s%s %s %s%s" (set_color $statcolor) (set_color -b $statcolor) (set_color black) \
        $stat (set_color -b $statcolor) (set_color black) \
        (set_color -b black) (set_color white) (date +%H:%M:%S) (set_color normal) (set_color -b normal)

    if test -z (string length (jobs))

    else
        printf "%s%s%s%s   %s%s" (set_color -b black) (set_color blue) (set_color black) (set_color -b blue) (set_color normal) (set_color -b normal)
    end
end
