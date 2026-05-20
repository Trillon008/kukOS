#!/bin/bash

set -exou pipefail

dnf5 install -y install \
  pavucontrol-qt \
  neovim \
  restic \
  bat \
  llama-cpp \
  htop

dnf5 uninstall -y uninstall \
  vim-enhanced \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts


dnf5 autoremove && dnf5 clean all
