export TERMINAL="st"
export TERMINAL_CMD="st"
export EDITOR="/usr/bin/emacsclient"
export VISUAL='/usr/bin/emacsclient -c'
export ALTERNATE_EDITOR="/usr/bin/nvim"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export READER="zathura"
export IMAGEVIEWER="sxiv"
export MEDIAPLAYER="umpv"
export FILE="ranger"
export BIB="$HOME/Documents/research/control_systems.bib"
export REFER="$HOME/Documents/referbib"
export SUDO_ASKPASS="$HOME/.local/bin/tools/dmenupass"
export CONFIGDIR="$HOME/.config/"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude \*~'
export FZF_DEFAULT_OPTS="--layout=reverse --height=50% -1 --no-mouse --multi --inline-info --bind=ctrl-v:page-down --bind=alt-v:page-up"
export FZF_ALT_C_COMMAND="command fd --type d --hidden -L -i -E .git"
export FZF_CTRL_T_COMMAND="command fd --type f --type d --type l -L -i --hidden -E .git"
export FZF_CTRL_R_OPTS="--preview='echo {} | fold' --preview-window=up:35%"
# export FZF_TMUX=0
export FZF_ALT_C_OPTS="--preview 'tree -L 1 -l -C {} | head -100'"
if [ -f '$HOME/.dmenurc' ]; then
source '$HOME/.dmenurc'
fi
# export DMENU_OPTIONS="-i -h 26 -fn Monospace-12.0 -nb #282828 -nf #CABD9A -sb #BBBB26 -sf #1D1D1D"
# export SSH_AUTH_SOCK="/run/user/$(id -u)/gnupg/S.gpg-agent.ssh"

# export QT_QPA_PLATFORMTHEME="qt5ct"
systemctl --user import-environment
# Set keyboard repeat rate and delay
xset r rate 265 44
# xmodmap $HOME/.Xmodmap

# Change capslock to an additional control
setxkbmap -option ctrl:nocaps

## Use Spacebar as a Modifier
#if [ -x $(command -v xcape) ]; then
#  #. $HOME/.config/spacemod.sh
#  spare_modifier="Hyper_L"
#  xmodmap -e "keycode 65 = $spare_modifier"
#  # xmodmap -e "add Hyper_L = $spare_modifier"
#  xmodmap -e "keycode any = space"
#  xcape -t 1000 -e "$spare_modifier=space;Control_L=Escape"
#fi
if [[ -x $(command -v /usr/bin/xcape) ]]; then
	/usr/bin/xcape -e "Control_L=Escape"
fi

# Disallow Ctrl-S to pause visible input
# stty -ixon

# Add my scripts to PATH
# export PATH="$(du $HOME/.local/bin/* | cut -f2 | tr '\n' ':')$PATH"
export PATH=$HOME/.local/bin/i3cmds:$HOME/.local/bin/tools:$PATH

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"


