function peza-out
    eza -1 --group-directories-first --icons=always --classify=always | awk '{ print length, $0 }' | sort -nsr | cut -d" " -f2-
end

function _c --on-event fish_prompt
    if not set -q _pf
        set -g _pf (peza-out)
        set -g _pd (pwd)
        return
    end
    
    if test $status -ne 0
        echo ''
        peza-out
        echo ''
        set -g _pf (peza-out)
        set -g _pd (pwd)
        return
    end
    
    set _cd (pwd)
    
    if test "$_cd" != "$_pd"
        echo ''
        peza-out
        echo ''
        set -g _pf (peza-out)
        set -g _pd $_cd
        return
    end
    
    set _cf (peza-out)
    
    if test "$_cf" != "$_pf"
        set _cf_names
        set _pf_names
        for line in $_cf
            set -a _cf_names (echo $line | awk '{print $NF}')
        end
        for line in $_pf
            set -a _pf_names (echo $line | awk '{print $NF}')
        end
        
        for i in (seq (count $_cf))
            set _name $_cf_names[$i]
            if not contains -- $_name $_pf_names
                echo (set_color -i)"ADDED"(set_color normal) " $_cf[$i]"
            end
        end
        for i in (seq (count $_pf))
            set _name $_pf_names[$i]
            if not contains -- $_name $_cf_names
                echo (set_color -i)"REMOVED"(set_color normal) " $_pf[$i]"
            end
        end
        set -g _pf $_cf
    end
end
