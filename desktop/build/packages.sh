#!/bin/bash

set -exou pipefail

## Test new filter
wget -qcO /usr/lib64/ladspa/libdeep.so https://github.com/Rikorose/DeepFilterNet/releases/download/v0.5.6/libdeep_filter_ladspa-0.5.6-x86_64-unknown-linux-gnu.so

dnf5 install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

dnf5 update -y && dnf5 install -y \
  bat \
  btop \
  edk2-ovmf \
  ghostty \
  mpv \
  neovim \
  NetworkManager-fortisslvpn \
  openfortivpn \
  plasma-nm-fortisslvpn \
  qemu \
  restic \
  ripgrep \
  starship \
  tailscale \
  wezterm \
  yt-dlp \
  zed

dnf5 remove -y \
  firefox \
  firefox-langpacks \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts

dnf5 autoremove && dnf5 clean all
