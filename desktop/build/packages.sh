#!/bin/bash

set -exou pipefail

rpm-ostree install \
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
  tlp \
  tailscale \
  hledger

rpm-ostree uninstall \
  firefox \
  firefox-langpacks \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts
