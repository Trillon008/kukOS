#!/bin/bash

set -exou pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/gamerig/build/repos.sh
/ctx/gamerig/build/packages.sh
#/ctx/gamerig/build/fonts.sh

# For creating virtual screen and streaming
# Need to include some edid firmware in bazzite image.

mkdir -p /lib/firmware/edid
cp /ctx/gamerig/system_files/dell-2408wfp-dp /lib/firmware/edid/

# Clean up
rm -rf /ctx
