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
