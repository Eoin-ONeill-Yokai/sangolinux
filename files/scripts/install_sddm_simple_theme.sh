#!/usr/bin/env bash

set -oue pipefail #fail on error
set -x #echo on

echo "Installing Theme: simple-sddm ..."

git clone https://github.com/JaKooLit/simple-sddm.git ./simple-sddm
mkdir -p /usr/share/sddm/themes
sudo mv ./simple-sddm /usr/share/sddm/themes/

cat <<EOF >> /etc/sddm.conf.d/sddm.conf
[Theme]
Current=simple
EOF 

touch /usr/share/sddm/themes_installed.flag
