#!/usr/bin/env bash

set -oue pipefail #fail on error
set -x #echo on

echo "Installing Theme: simple-sddm ..."

git clone https://github.com/JaKooLit/simple-sddm-2.git ./simple-sddm-2
mkdir -p /usr/share/sddm/themes
mv ./simple-sddm-2 /usr/share/sddm/themes/

cat <<EOF > /etc/sddm.conf.d/sddm.conf
[Theme]
Current=simple-sddm-2
EOF

touch /usr/share/sddm/themes_installed.flag
