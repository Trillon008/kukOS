#!/bin/bash

set -exou pipefail

# Remove some default repo I don't need
rm -rf /etc/yum.repos.d/google-chrome.repo "/etc/yum.repos/_copr:copr.fedorainfracloud.org:phracek:PyCharm.repo"

# Starship repo
cat <<EOF >/etc/yum.repos.d/starship.repo
[copr:copr.fedorainfracloud.org:atim:starship]
name=Copr repo for starship owned by atim
baseurl=https://download.copr.fedorainfracloud.org/results/atim/starship/fedora-\$releasever-\$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/atim/starship/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF
