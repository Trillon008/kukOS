#!/bin/bash

set -exou pipefail

rpm-ostree install \
  wireguard-tools \
  libatomic \
  pavucontrol-qt \
  neovim \
  starship \
  mpv \
  bat \
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

rpm-ostree install /ctx/xwiimote-ng-3.0.1-1.fc41.x86_64.rpm
