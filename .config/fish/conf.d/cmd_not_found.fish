function fish_command_not_found
    set -l cmd $argv[1]
    printf "%s::%s command '$cmd' not found.\n%s::%s searching in the local database...\n" (set_color --bold -f brcyan) (set_color -f normal) (set_color -f brcyan) (set_color -f normal)
    command yay -F $cmd
end
