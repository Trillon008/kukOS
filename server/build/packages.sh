#!/bin/bash

set -exou pipefail

dnf5 install -y install \
  neovim \
  restic \
  bat \
  caddy \
  htop

## Get Mergerfs in
curl --fail --retry 3 --retry-delay 3 -sL https://github.com/trapexit/mergerfs/releases/download/2.40.2/mergerfs-2.40.2-1.fc41.x86_64.rpm -o /ctx/mergerfs.rpm
dnf5 install -y /ctx/mergerfs.rpm
