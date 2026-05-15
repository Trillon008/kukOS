#!/bin/bash

set -exou pipefail

dnf5 install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

 dnf update -y && dnf5 install -y \
  wireguard-tools \
  libatomic \
  pavucontrol-qt \
  neovim \
  restic \
  ripgrep \
  starship \
  mpv \
  bat \
  yt-dlp \
  btop \
  openfortivpn \
  plasma-nm-fortisslvpn \
  NetworkManager-fortisslvpn \
  wezterm \
  tailscale \
  zed

#Useless now ?
#   wireguard-tools \
# libatomic \
# tlp conflict with tuned

dnf5 uninstall -y \
  firefox \
  firefox-langpacks \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts
