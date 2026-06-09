#!/bin/bash

set -exou pipefail

/ctx/build/packages.sh

# Clean up
rm -rf /ctx
