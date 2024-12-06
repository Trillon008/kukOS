#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/build/repos.sh
/ctx/build/packages.sh
/ctx/build/fonts.sh
