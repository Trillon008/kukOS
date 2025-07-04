#!/bin/bash

set -exou pipefail

rpm-ostree install \
  pavucontrol-qt \
  neovim \
  restic \
  starship \
  bat \
  htop

rpm-ostree uninstall \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts
