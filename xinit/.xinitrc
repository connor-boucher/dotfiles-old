#!/bin/sh

# xinitrc

## execute ~/.xprofile
[ -f "$HOME/.xprofile" ] && . "$HOME/.xprofile"

## launch bspwm
exec bspwm
