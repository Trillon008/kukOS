#!/bin/bash

set -exou pipefail

rpm-ostree install \
  wireguard-tools \
  libatomic \
  pavucontrol-qt \
  neovim \
  restic \
  starship \
  mpv \
  bat \
  yt-dlp \
  btop \
  openfortivpn \
  ksystemlog \
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
