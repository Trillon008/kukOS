#!/bin/bash

set -exou pipefail

RELEASE="$(rpm -E %fedora)"

/ctx/server/build/packages.sh

# Clean up
rm -rf /ctx
