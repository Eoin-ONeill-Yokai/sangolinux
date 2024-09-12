#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail


user_hyprland_conf="$HOME/.config/hypr/hyprland.conf"
default_conf="/usr/share/hyprland/hyprland.conf"

if [ -f "$hyprland_conf" ]; then
    Hyprland -c "$hyprland_conf"
else
    Hyprland -c "$default_conf"
fi