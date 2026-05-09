set -x FUDO_HIDE 1
set -x EDITOR nvim
set -x VISUAL nvim
set -x TERM xterm-256color
set -x fish_greeting ""
set -x MANPAGER "nvim +Man!"
set -x VIDEO_PLAYER mpv
set -x CITY hidden-for-privacy-reasons # example: set -x CITY Moscow; used for Super+Shift+W

set -gx XCURSOR_THEME plan9cursors
set -gx XCURSOR_SIZE 24
set -gx QT_QPA_PLATFORMTHEME qt6ct
set -gx PATH $PATH $HOME/.local/bin $HOME/.cargo/bin $HOME/go/bin

alias bat "bat --style=plain --theme=ansi"
alias eza "eza"

abbr dsk "dysk"
abbr ls "eza"
abbr cat "bat"
abbr w "nvim"

function fish_prompt
    set -l predicament (test (id -u) -eq 0 && echo "ROOT" || echo "NORM")
    echo -n -s "$predicament $status > "
end
function fish_right_prompt
    echo -n -s (prompt_pwd)
end

function fish_postexec --on-event fish_postexec
    echo -ne "\e[6 q"
end
