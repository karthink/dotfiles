#!/bin/bash
# Source: https://github.com/jeffmhubbard/betterlockscreen
systemctl enable betterlockscreen@$USER
# systemctl disable betterlockscreen@$USER
betterlockscreen -u $HOME/Pictures/wallpapers -r $(xrandr | grep '*' | awk '(NR==1) {print $1}')
