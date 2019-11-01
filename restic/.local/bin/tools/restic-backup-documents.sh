#!/usr/bin/env bash

# Check if on AC power
if [[ $(acpi -a | grep -o "on-line") = "on-line" ]]; then
   echo "Connected to AC power, starting backup process" 
   source $HOME/.config/restic/restic-env.sh
   echo "Restic environment variables set. Creating backup snapshot"
   restic backup ~/Documents --exclude-file=$HOME/.config/restic/restic-exclude.txt $@
   exit $?
else
    echo "Not connected to AC, skipping backup"
    exit 14
fi

