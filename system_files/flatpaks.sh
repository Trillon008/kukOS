#!/bin/bash

# This is intended to be running just once on the first rebase.
# Flatpaks live day to day and don't need to be wierdly handled in the Containerfile
# I'm not toally sure this works, it's been a while since I started clean from Kinoite
# Yet it shouldn't be difficult to modify

# Need to be run as root
if [[ $UID != 0 ]]; then
  echo "This script must be run as root"
  exit 1
fi

# Remove all Fedora's preinstalled
flatpak uninstall --all -y
flatpak remote-delete fedora

# Install flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install some packages
flatpak install -y org.mozilla.firefox \
  com.bitwarden.desktop \
  com.dec05eba.gpu_screen_recorder \
  com.heroicgameslauncher.hgl \
  com.valvesoftware.Steam \
  org.godotengine.Godot \
  org.signal.Signal \
  com.spotify.Client \
  org.onlyoffice.desktopeditors \
  org.qbittorrent.qBittorrent \
  org.rncbc.qpwgraph \
  md.obsidian.Obsidian \
  org.kde.kwrite \
  org.kde.krdc \
  org.kde.gwenview \
  org.kde.okular
