#!/usr/bin/env bash

# SOURCED FROM WAYBLUE: https://github.com/wayblueorg/wayblue/blob/live/files/scripts/setearlyloading.sh

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's@omit_drivers@force_drivers@g' /usr/lib/dracut/dracut.conf.d/99-nvidia.conf
sed -i 's@ nvidia @ i915 amdgpu nvidia @g' /usr/lib/dracut/dracut.conf.d/99-nvidia.conf