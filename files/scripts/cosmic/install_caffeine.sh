#!/bin/bash

dnf install -y libxkbcommon-devel

git clone https://github.com/codevardhan/caffeine-applet.git ./caffeine-tmp
pushd caffeine-tmp
just vendor
just build-vendored
just prefix=/usr install
popd
rm -r caffeine-tmp

dnf remove -y libxkbcommon-devel