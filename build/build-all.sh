#!/bin/bash

set -exou pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/build/repos.sh
/ctx/build/packages.sh
/ctx/build/fonts.sh

cp /ctx/system_files/flatpaks.sh /bin/first-install-flatpak

# Clean up
rm -rf /ctx
