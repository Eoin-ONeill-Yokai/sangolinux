#!/usr/bin/env bash

# SOURCED FROM WAYBLUE: https://github.com/wayblueorg/wayblue/blob/live/files/scripts/installnvidiatoolkitpolicy.sh

# Tell build process to exit if there are any errors.
set -oue pipefail


echo '

# Nvidia modesetting support. Set to 0 or comment to disable kernel modesetting
# support. This must be disabled in case of SLI Mosaic.

options nvidia-drm modeset=1 fbdev=1

' > /usr/lib/modprobe.d/nvidia-modeset.conf

cp /usr/lib/modprobe.d/nvidia-modeset.conf /etc/modprobe.d/nvidia-modeset.conf