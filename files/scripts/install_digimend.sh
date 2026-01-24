#!/bin/bash

dnf install -y "kernel-devel-uname-r == $(uname -r)"
dnf install -y dkms

git clone https://github.com/DIGImend/digimend-kernel-drivers.git

cd digimend-kernel-drivers

make dkms_install