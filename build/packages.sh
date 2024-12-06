#!/bin/bash

set -ouex pipefail

rpm-ostree install \
  wireguard-tools \
  libatomic \
  pavucontrol-qt \
  neovim \
  starship \
  mpv \
  bat \
  wezterm \
  yt-dlp \
  btop \
  openfortivpn \
  plasma-nm-fortisslvpn \
  NetworkManager-fortisslvpn

rpm-ostree uninstall \
  firefox \
  firefox-langpacks \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts
