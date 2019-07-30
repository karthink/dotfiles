#!/bin/bash
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="st"
export EDITOR=/usr/bin/nvim
# export EDITOR="/usr/bin/emacsclient -t"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export READER="zathura"
export IMAGEVIEWER="sxiv"
export FILE="ranger"
export BIB="$HOME/Documents/LaTeX/uni.bib"
export REFER="$HOME/Documents/referbib"
export SUDO_ASKPASS="$HOME/.local/bin/tools/dmenupass"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude *~'
export FZF_DEFAULT_OPTS="--layout=reverse --height=50% -1 --no-mouse --multi --inline-info"
# Set keyboard repeat rate and delay
xset r rate 235 44

# Change capslock to an additional control
# setxkbmap -option ctrl:nocaps

## Use Spacebar as a Modifier
#if [ -x $(command -v xcape) ]; then
#  #. $HOME/.config/spacemod.sh
#  spare_modifier="Hyper_L"
#  xmodmap -e "keycode 65 = $spare_modifier"
#  # xmodmap -e "add Hyper_L = $spare_modifier"
#  xmodmap -e "keycode any = space"
#  xcape -t 1000 -e "$spare_modifier=space;Control_L=Escape"
#fi
if [ -x $(command -v /usr/bin/xcape) ]; then
	/usr/bin/xcape -e "Control_L=Escape"
fi

# Disallow Ctrl-S to pause visible input
stty -ixon

# Add my scripts to PATH
export PATH="$(du $HOME/.local/bin/* | cut -f2 | tr '\n' ':')$PATH"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"


