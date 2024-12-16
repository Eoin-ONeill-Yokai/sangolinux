#!/bin/bash

wget https://gitlab.com/api/v4/projects/37107648/packages/generic/sddm-eucalyptus-drop/2.0.0/sddm-eucalyptus-drop-v2.0.0.zip
sddmthemeinstaller --install ./sddm-eucalyptus-drop-v2.0.0.zip
cat <<EOF >> /etc/sddm.conf.d/sddm.conf
[Theme]
Current=eucalyptus-drop
EOF 


