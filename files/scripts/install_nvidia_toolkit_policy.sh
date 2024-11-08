#!/usr/bin/env bash

# SOURCED FROM WAYBLUE: https://github.com/wayblueorg/wayblue/blob/live/files/scripts/installnvidiatoolkitpolicy.sh

# Tell build process to exit if there are any errors.
set -oue pipefail

semodule --verbose --install /usr/share/selinux/packages/nvidia-container.pp