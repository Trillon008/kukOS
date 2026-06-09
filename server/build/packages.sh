#!/bin/bash

set -exou pipefail

dnf5 install -y install \
  neovim \
  restic \
  bat \
  htop

dnf5 autoremove && dnf5 clean all
