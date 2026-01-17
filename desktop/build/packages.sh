#!/bin/bash

set -exou pipefail

dnf5 install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

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
  zed

rpm-ostree uninstall \
  firefox \
  firefox-langpacks \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts

## Not a fan of this but for now this is all we got
npm -g install cursor-acp
