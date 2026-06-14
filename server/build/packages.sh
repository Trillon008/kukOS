#!/bin/bash

set -exou pipefail

dnf5 install -y install \
  bat \
  htop \
  neovim \
  restic \

dnf5 autoremove && dnf5 clean all
