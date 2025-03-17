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

sed -i 's/^MainColor=.*$/MainColor="#b8b8b8"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf
sed -i 's/^AccentColor=.*$/AccentColor="#01a299"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf
sed -i 's/^BlurRadius=.*$/BlurRadius="0"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf
sed -i 's/^FormPosition=.*$/FormPosition="center"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf
sed -i 's/^Background=.*$/Background="Backgrounds\/earth_lights_environment_globe-cc0.jpg"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf

touch /usr/share/sddm/themes_installed.flag
