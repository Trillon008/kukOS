#!/bin/bash

set -exou pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/build/repos.sh
/ctx/build/packages.sh
/ctx/build/fonts.sh

# Maybe put this somewhere else
systemctl enable podman.socket

# Clean up
rm -rf /ctx
