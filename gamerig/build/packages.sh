#!/bin/bash

set -exou pipefail

dnf5 install -y install \
  neovim \
  restic \
  bat \
  llama-cpp \
  htop

dnf5 remove -y  \
  vim-enhanced \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts


dnf5 autoremove && dnf5 clean all
