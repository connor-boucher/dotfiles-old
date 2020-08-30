## on login
if status is-login

    ### add my custom scripts to $PATH
    export PATH="$PATH:$HOME/scripts"

    ### user program variables
    export BROWSER="brave"
    export EDITOR="nvim"
    export LAUNCHER="rofi -show run"
    export LOCK="slock"
    export TERMINAL="st"

    ### xdg variables
    export XDG_CONFIG_HOME="$HOME/.config"
    export XDG_DATA_HOME="$HOME/.local/share"
    export XDG_CACHE_HOME="$HOME/.cache"

    # start x
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx --
    end

end

## sets the fish theme to gruvbox (https://github.com/Jomik/fish-gruvbox)
theme_gruvbox dark hard

## customise the prompt
function fish_prompt
    echo -n (set_color $fish_color_cwd)(prompt_pwd) (set_color normal)
end

## enable vi keybinds
fish_vi_key_bindings

## disables the mode prompt that's present in vi mode
function fish_mode_prompt
end

## aliases
alias "grep"  "grep --color=auto"
alias "ls"    "ls -hN --color=auto --group-directories-first"
alias "mkdir" "mkdir -pv"

## abbreviations
abbr -a -g cat bat
abbr -a -g g   git
abbr -a -g p   sudo pacman
abbr -a -g ss  sudo systemctl
abbr -a -g top ytop
abbr -a -g v   "$EDITOR"
abbr -a -g vim "$EDITOR"
abbr -a -g y   yay

## config abbreviations
abbr -a -g cfb "$EDITOR" "$XDG_CONFIG_HOME/bspwm/bspwmrc"
abbr -a -g cff "$EDITOR" "$XDG_CONFIG_HOME/fish/config.fish"
abbr -a -g cfp "$EDITOR" "$XDG_CONFIG_HOME/picom/picom.conf"
abbr -a -g cfs "$EDITOR" "$XDG_CONFIG_HOME/sxhkd/sxhkdrc"
abbr -a -g cfv "$EDITOR" "$XDG_CONFIG_HOME/nvim/init.vim"
abbr -a -g cfy "$EDITOR" "$XDG_CONFIG_HOME/yabar/yabar.conf"

## run pfetch at the start of each session
#pfetch
