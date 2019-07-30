#!/bin/bash
# Script to install essentials on a fresh Arch-variant install.

# Command line utilities
trizen -S --needed 7z \
          bash-completion \
          dmenu \
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
          i3blocks \
          unclutter \
          xcape

# Media viewing utilities
trizen -S --needed zathura \
          zathura-pdf-poppler \
          zathura-cb \
          mcomix \
          qutebrowser \
	  ranger

# Video utilities
trizen -S --needed mps-youtube \
	  mpv \
          youtube-dl

# Files and editing utilities
trizen -S --needed onedrive-abraunegg \
          neovim \
          emacs \
          vim-plug

# Misc utilities
trizen -S --needed jq redshift \
          maim

trizen -S --needed acdcontrol-git \
	bumblebee-status \
	cava \
	debtap \
	playerctl \
	mpv-mpris \
	pulse-secure

trizen -S --needed python-i3ipc betterlockscreen

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
	# vim-plug \
	# webkitgtk
