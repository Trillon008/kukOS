#!/bin/bash

set -exou pipefail

# Remove some default repo I don't need
rm -rf /etc/yum.repos.d/google-chrome.repo "/etc/yum.repos/_copr:copr.fedorainfracloud.org:phracek:PyCharm.repo"

## Enable Sunshine  Community maintained repo
## See --> https://copr.fedorainfracloud.org/coprs/pvermeer/sunshine/
dnf5 copr enable -y pvermeer/sunshine
