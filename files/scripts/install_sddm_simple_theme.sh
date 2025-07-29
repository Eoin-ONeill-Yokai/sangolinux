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

# #232634 MANTLE
# #414559 SURFACE
# #c6d0f5 TEXT
# #81c8be ACCENT
# #e78284 ERROR
# #babbf1 HIGHLIGHT BASE
# #838ba7 HIGHLIGHT TEXT

replace_color () {
    local title=$1
    local value=$2
    sed -i 's/^'${title}'=.*$/${title}="'${value}'"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf
}


replace_color "MainColor" "#c6d0f5"
replace_color "AccentColor" "#81c8be"

replace_color "HeaderTextColor" "#c6d0f5"
replace_color "DateTextColor" "#c6d0f5"
replace_color "TimeTextColor" "#81c8be"

replace_color "LoginFieldBackgroundColor" "#414559"
replace_color "PasswordFieldBackgroundColor" "#414559"
replace_color "LoginFieldTextColor" "#81c8be"
replace_color "PasswordFieldTextColor" "#81c8be"
replace_color "UserIconColor" "#ca9ee6"
replace_color "PasswordIconColor" "#ca9ee6"

replace_color "WarningColor" "#e78284"

replace_color "LoginButtonTextColor" "#c6d0f5"
replace_color "LoginButtonBackgroundColor" "#414559"
replace_color "SystemButtonsIconsColor" "#c6d0f5"
replace_color "SessionButtonTextColor" "#c6d0f5"
replace_color "VirtualKeyboardButtonTextColor" "#9157D6"

replace_color "DropdownTextColor" "#c6d0f5"
replace_color "DropdownSelectedBackgroundColor" "#414559"
replace_color "DropdownBackgroundColor" "#232634"

replace_color "HighlightTextColor" "#232634"
replace_color "HighlightBackgroundColor" "#81c8be"
replace_color "HighlightBorderColor" "#414559"

sed -i 's/^BlurRadius=.*$/BlurRadius="0"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf
sed -i 's/^FormPosition=.*$/FormPosition="center"/g' /usr/share/sddm/themes/simple-sddm-2/theme.conf


touch /usr/share/sddm/themes_installed.flag
