#!/bin/bash
# Script to install essentials on a fresh Arch-variant install.

# Command line utilities
pamac install 7z \
          bash-completion \
          dmenu \
          figlet \
          curl sqlite dmd \
          fzf \
          ldc \
          stow \
          libnotify \
          imagewriter \
          socat \
          python-pip \
          neofetch \
          qrencode \
          i3blocks \
          unclutter \
          xcape

# Media viewing utilities
pamac install zathura \
          zathura-pdf-poppler \
          zathura-cb \
          mcomix \
          qutebrowser \
	  ranger \
	  w3m

# Video utilities
pamac install mps-youtube \
	  mpv \
          youtube-dl

# Files and editing utilities
pamac install onedrive-abraunegg \
          neovim \
          emacs \
          vim-plug

# Misc utilities
pamac install jq redshift \
          maim \
          noto-fonts-emoji \
          ttf-ancient \
          ttf-droid \
          ttf-inconsolata \
          imagewriter \
          libva-intel-driver

pamac build acdcontrol-git \
	bumblebee-status \
	cava \
	debtap \
	lightdm-webkit-theme-aether \
	mpv-mpris \
	onedrive-abraunegg \
	pamac-dev \
	pulse-secure \
	remmina-plugin-teamviewer \
	st-luke-git \
	teamviewer \
	vim-plug \
	webkitgtk
