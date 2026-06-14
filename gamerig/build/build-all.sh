#!/bin/bash

set -exou pipefail

/ctx/build/repos.sh
/ctx/build/packages.sh
#/ctx/build/fonts.sh

# For creating virtual screen and streaming
# Need to include some edid firmware in bazzite image.

mkdir -p /lib/firmware/edid
cp /ctx/system_files/* /lib/firmware/edid/

# Clean up
rm -rf /ctx
