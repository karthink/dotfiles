#!/bin/bash
# Script to install essentials on a fresh Arch-variant install.

sudo pacman -Syu
sudo pacman -S trizen

install() {
    trizen --needed --noconfirm -S $@
}

## Command line utilities
########################################
install 7z bash-completion \
        git \
        figlet \
        curl sqlite dmd \
        ldc \
        stow \
        libnotify \
        socat \
        python-pip \
        neofetch \
        qrencode \
        xcape

install antiword \
       eless \
       silver-searcher-git \
       fzf \
       fd \
       unzip \
       unrar tmux tldr xclip

########################################
## i3 setup
install i3 dmenu \
        networkmanager-dmenu \
        xorg-xwininfo \
        rxvt-unicode \
        python-i3ipc \
        i3-scrot \
        compton \
        pavucontrol-qt \
        betterlockscreen \
        bumblebee-status \
        maim \
        unclutter \
        xautolock \
        i3blocks \
        dunst \
        xdotool \
        lxappearance

# install st-manjaro \
#         dmenu-manjaro \
#         compton-tryone-git \
#         pavucontrol

install python-i3ipc \
        qt5ct \
        lxqt-powermanagement \
        perl-anyevent-i3 \
        python2-dbus \
        python2-lxml \
        python-lxml

########################################
# Readers, browser and file manager
install zathura \
	zathura-pdf-poppler \
	zathura-cb \
	mcomix \
	qutebrowser \
	ranger

########################################
# Video utilities
install mps-youtube \
	mpv \
	mpv-mpris \
	playerctl \
	cava \
	youtube-dl

########################################
## Music Setup
install mpd ncmpcpp mpc mpdris2
install spotify
install spotifyd-dbus-mpris
# mpd-mpris is written in Go and has >500 MB dependencies
# install mpd-mpris

########################################
# File editing & coding utilities
install neovim vim-plug \
        emacs \
	words \
	aspell-en \
        ctags

########################################
## Email setup
install abook \
       gmailieer \
       isync \
       notmuch \
       msmtp \
       notmuch-python-git \
       pass pass-otp

# Alternatively, just
# install mutt-wizard-git

########################################
## Networking utilities
install networkmanager-l2tp \
        vnstat \
        samba \
        teamviewer \
        transmission-qt \
        pulse-secure

install manjaro-settings-samba

########################################
# Fonts
install awesome-terminal-fonts \
        ttf-symbola \
        powerline-fonts \
        ttf-fantasque-sans-mono \
        ttf-font-awesome \
        ttf-nerd-fonts-symbols

# install nerd-fonts-noto-sans-mono

########################################
## Misc utilities
install jq redshift simple-mtpfs

# Sync utilities
install rclone onedrive-abraunegg

# HID monitor control
install acdcontrol-git

# For exterior programs: Matlab, vpn, etc
install libselinux
        # lightdm-webkit-theme-aether \
        # imagewriter \
        #   w2m \
        # ttf-ancient \
        # ttf-inconsolata \
        # ttf-droid \
        # imagewriter \
        # libva-intel-driver
        # noto-fonts-emoji \
        # remmina-plugin-teamviewer \
        # webkitgtk

## Conditional
# install bind-tools
# Uncomplicated firewall
# install ufw

# ########################################
# ## Flash cards
# install anki

# ########################################
# ## Blogging
# install hugo
# install netlify

# ########################################
# ## Encryption
install truecrypt

# ########################################
# ## Latex and publishing
# install texlive-most
# install zotero
# install words

# ########################################
# ## Illustration
# install inkscape
# install textext pstoedit

# ########################################
# # Camera and recording
# install guvcview-qt
# install audacity

# ########################################
# ## KDE & Plasma
# sudo pacman -S latte-dock
# sudo pacman -S ktorrent
# install kwave

########################################
# PULL IN MY DOTFILES
########################################
cd $HOME
git clone https://github.com/karthink/dotfiles

if [[ $(command -v stow) ]]; then

    # TODO: Move existing dots out of the way first

    cd dotfiles
    stow -R *
fi

cd $HOME
git clone https://github.com/karthink/.emacs.d

# Build my fork of st
mkdir -p /tmp/st-karthik-git
cd /tmp/st-karthik-git
wget https://raw.githubusercontent.com/karthink/st/extras/PKGBUILD
makepkg
makepkg --install
makepkg --clean

# setup login shell
# echo -e '#!/bin/bash -l\nexec -l fish "$@"\n' | sudo tee /usr/local/bin/fishlogin
# sudo chmod +x /usr/local/bin/fishlogin
# echo /usr/local/bin/fishlogin | sudo tee -a /etc/shells
# sudo usermod -s /usr/local/bin/fishlogin $USER
