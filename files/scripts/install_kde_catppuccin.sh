#!/usr/bin/env bash

set -oue pipefail #fail on error
set -x #echo on

echo "Installing Theme: KDE Catpuccin (LATTE and MOCHA)..."

# https://github.com/catppuccin/kde.git

git clone https://github.com/catppuccin/kde.git ./catppuccin
cd ./catppuccin
./install.sh Latte Teal Modern global
./install.sh Mocha Teal Modern global

mkdir -p /usr/share/kde
touch /usr/share/kde/catppuccin_installed.flag
