set -oue pipefail #fail on error
set -x #echo on

git clone https://github.com/Eoin-ONeill-Yokai/Orchis-theme.git ./orchis
cd ./orchis

./install.sh -c dark -t purple -l --tweaks solid --name Orchis-Sango

if [ -x "$(command -v gsettings)" ]; then 
    gsettings set org.gnome.desktop.interface gtk-theme Orchis-Sango
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi

if [ -x "$(command -v dbus-send)" ]; then
    dbus-send --session --dest=org.kde.GtkConfig --type=method_call /GtkConfig org.kde.GtkConfig.setGtkTheme 'string:Orchis-Sango'
fi

mkdir -p /usr/share/gtk
touch /usr/share/gtk/orchis-sango-installed.flag

