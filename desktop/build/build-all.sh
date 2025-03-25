#!/bin/bash

set -exou pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/desktop/build/repos.sh
/ctx/desktop/build/packages.sh
/ctx/desktop/build/fonts.sh

cp /ctx/desktop/system_files/flatpaks.sh /bin/first-install-flatpak

# Clean up
rm -rf /ctx
