#!/bin/bash
git clone https://github.com/JaKooLit/simple-sddm.git ./simple_sddm
sudo mv ./simple_sddm /usr/share/sddm/themes/

cat <<EOF >> /etc/sddm.conf.d/sddm.conf
[Theme]
Current=simple
EOF 
