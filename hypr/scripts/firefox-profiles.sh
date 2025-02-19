#!/usr/bin/env bash

PROFILE_DIR="$HOME/.mozilla/firefox/"
PROFILE_LIST=$(find "$PROFILE_DIR" -maxdepth 1 -type d -name '*.*' -exec basename {} \; | awk -F'.' '{print $2}')

# Use rofi to display the profile list
PROFILE=$(echo "$PROFILE_LIST" | rofi -dmenu -i -p "Select Firefox Profile:")

# Check if a profile was selected
if [ -n "$PROFILE" ]; then
  [[ "x$PROFILE" == "xproxy" ]] && ssh -D 12345 mumm &
  firefox -P "$PROFILE" &
fi
