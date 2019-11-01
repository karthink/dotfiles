#!/usr/bin/env bash
export RESTIC_REPOSITORY="b2:karthink-thinkpad:/home/karthik"                               # Location of repository (replaces -r)
export RESTIC_PASSWORD_COMMAND="pass files/restic/backblaze-bucket-karthink-thinkpad"       # password command (replaces --password-command)
export RESTIC_EXCLUDE="$HOME/.config/restic/restic-exclude.txt"
export B2_ACCOUNT_ID="$(pass files/restic/backblaze-api-key | awk 'NR==2 {print $2}')" # Account ID or applicationKeyId for Backblaze B2
export B2_ACCOUNT_KEY="$(pass files/restic/backblaze-api-key | awk 'NR==1 {print}')"   # Account Key or applicationKey for Backblaze B2
