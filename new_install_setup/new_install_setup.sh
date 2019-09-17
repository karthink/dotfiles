#!/bin/bash
# Script to install essentials on a fresh Arch-variant install.

# Command line utilities
trizen -S --needed 7z bash-completion \
          figlet \
          curl sqlite dmd \
          fzf \
          ldc \
          stow \
          libnotify \
          socat \
          python-pip \
          neofetch \
          qrencode \
          xcape

# i3 setup
trizen -S  networkmanager-dmenu \
	xorg-xwininfo tmux
	rxvt-unicode \
	python-i3ipc \
	i3-scrot \
	compton \
	pavucontrol-qt \
	betterlockscreen \
	bumblebee-status \
	maim \
	unclutter \
	dmenu \
	xautolock \
	i3blocks \
	dunst \
	xdotool \
	lxappearance
	# dmenu-manjaro

# File viewing utilities
trizen -S --needed zathura \
	zathura-pdf-poppler \
	zathura-cb \
	mcomix \
	qutebrowser \
	ranger

# Video utilities
trizen -S --needed mps-youtube \
	mpv \
	mpv-mpris \
	playerctl \
	cava \
	youtube-dl

# Files and editing utilities
trizen -S --needed vim \
	neovim \
        emacs \
	vim-plug \
	words \
	aspell-en

# Misc utilities
trizen -S --needed jq redshift
trizen -S --needed onedrive-abraunegg \
	acdcontrol-git \
	debtap \

# Fonts
trizen -S --needed nerd-fonts-noto-sans-mono \
	awesome-terminal-fonts

# Mail
trizen -S --needed mutt-wizard-git \
	abook \
	pam-gnupg-git

# For exterior programs: Matlab, vpn, etc
trizen -S --needed libselinux \
	pulse-secure

	# lightdm-webkit-theme-aether \
          # imagewriter \
	#   w2m
          # ttf-ancient \
          # ttf-inconsolata \
          # ttf-droid \
          # imagewriter \
          # libva-intel-driver
          # noto-fonts-emoji \
	# remmina-plugin-teamviewer \
	# st-luke-git \
	# teamviewer \
	# webkitgtk

# New section - to sort
######################################################################

# trizen -S abook
# trizen -S acdcontrol
# trizen -S acdcontrol-git
# trizen -S antiword
# trizen -S audacity
# trizen -S bash-completion
# trizen -S bind-tools
# trizen -S compton
# trizen -S compton-tryone-blackcapcoder-git
# trizen -S compton-tryone-git
# trizen -S ecasound
# trizen -S fd
# trizen -S flow-pomodoro
# trizen -S guvcview-qt
# trizen -S kwave
# trizen -S kwin-scripts-khronkite-git
# trizen -S kwin-scripts-khronkite-tiling
# trizen -S kwin-scripts-krohnkite-git
# trizen -S kwin-scripts-tiling
# trizen -S libselinux
# trizen -S luke
# trizen -S mpdris2
# trizen -S mpv-mpris
# trizen -S mutt-wizard-git
# trizen -S networkmanager-l2tp
# trizen -S pam-gnupg-git
# trizen -S pavucontrol
# trizen -S pavucontrol-qt --no-confirm
# trizen -S pavucontrol-qt --noconfirm
# trizen -S playerctl
# trizen -S pomo potato 
# trizen -S potato
# trizen -S python-i3ipc
# trizen -S rxvt-unicode
# trizen -S silver-searcher-git
# trizen -S spotify
# trizen -S spotifyd-dbus-mpris
# trizen -S spt omodoro-git flow-pomodoro
# trizen -S st-luke-git
# trizen -S st-manjaro 
# trizen -S surf
# trizen -S textext
# trizen -S unzip
# trizen -S xcape
# trizen -S zotero

# sudo pacman -S aspell-en
# sudo pacman -S awesome-terminal-fonts
# sudo pacman -S blender
# sudo pacman -S dmenu-manjaro
# sudo pacman -S dunst
# sudo pacman -S gimp
# sudo pacman -S i3-scrot
# sudo pacman -S inkscape
# sudo pacman -S ktorrent 
# sudo pacman -S latte-dock
# sudo pacman -S lxappearance
# sudo pacman -S lxqt-powermanagement
# sudo pacman -S lxqt-powermanager
# sudo pacman -S manjaro-settings-samba
# sudo pacman -S mpd-mpris
# sudo pacman -S mpd ncmpcpp mpc
# sudo pacman -S nerd-fonts-noto-sans-mono 
# sudo pacman -S networkmanager-dmenu
# sudo pacman -S powerline-fonts
# sudo pacman -S pstoedit
# sudo pacman -S pulseaudio
# sudo pacman -S python2-dbus
# sudo pacman -S python2-lxml
# sudo pacman -S python-lxml
# sudo pacman -S sc
# sudo pacman -S texlive
# sudo pacman -S texlive-bin
# sudo pacman -S texlive-group
# sudo pacman -S texlive-groupe
# sudo pacman -S texlive-most
# sudo pacman -S tldr
# sudo pacman -S tmux
# sudo pacman -S ttf-font-awesome
# sudo pacman -S ttf-nerd-fonts-symbols
# sudo pacman -S unrar
# sudo pacman -S vnstat
# sudo pacman -S words
# sudo pacman -S xautolock
# sudo pacman -S xclip
# sudo pacman -S xdotool
# sudo pacman -S xorg-xwininfo
# sudo pacman -S xwininfo

######################################################################
