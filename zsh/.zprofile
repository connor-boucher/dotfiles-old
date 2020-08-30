# .zprofile

## add ~/scripts to $PATH
export PATH="$PATH:$HOME/scripts"

## create some custom variables for use in scripts
export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="st"

## run startx if the user signs in through tty1
[ "$(tty)" = "/dev/tty1" ] && exec startx
