#!/bin/bash

set -exou pipefail

rpm-ostree install \
  pavucontrol-qt \
  neovim \
  restic \
  bat \
  htop

rpm-ostree uninstall \
  vim-enhanced \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts
