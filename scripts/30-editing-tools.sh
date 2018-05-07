#!/bin/bash

apt install -y blender gimp inkscape

echo install kdenlive
wget http://mirrors.ukfast.co.uk/sites/kde.org/files/kdenlive/release/kdenlive-18.04.0-x86_64.AppImage
mkdir /opt/kdenlive
mv kdenlive-18.04.0-x86_64.AppImage /opt/kdenlive/
chmod 555 /opt/kdenlive/kdenlive-18.04.0-x86_64.AppImage
ln -s /opt/kdenlive/kdenlive-18.04.0-x86_64.AppImage /usr/local/bin/kdenlive
