#!/bin/bash
# Script to install essentials on a fresh Arch-variant install.

# Command line utilities
pacman -S 7z \
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
pacman -S zathura \
          zathura-pdf-poppler \
          zathura-cb \
          mcomix \
          qutebrowser \
	  ranger \
	  w3m

# Video utilities
pacman -S mps-youtube \
	  mpv \
          youtube-dl

# Files and editing utilities
pacman -S onedrive-abraunegg \
          neovim \
          emacs \
          vim-plug

# Misc utilities
pacman -S jq redshift \
          maim \
          noto-fonts-emoji \
          ttf-ancient \
          ttf-droid \
          ttf-inconsolata \
          imagewriter \
          libva-intel-driver
