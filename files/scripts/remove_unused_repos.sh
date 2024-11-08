#!/usr/bin/env bash

# SOURCED FROM WAYBLUE: https://github.com/wayblueorg/wayblue/blob/live/files/scripts/removeunusedrepos.sh

# Tell build process to exit if there are any errors.
set -oue pipefail

rm -f /etc/yum.repos.d/negativo17-fedora-nvidia.repo
rm -f /etc/yum.repos.d/negativo17-fedora-multimedia.repo
rm -f /etc/yum.repos.d/eyecantcu-supergfxctl.repo
rm -f /etc/yum.repos.d/_copr_ublue-os-akmods.repo
rm -f /etc/yum.repos.d/nvidia-container-toolkit.repo