#!/bin/bash

set -exou pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/build/repos.sh
/ctx/build/packages.sh
/ctx/build/fonts.sh

# Clean up
rm -rf /ctx
