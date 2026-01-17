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
priority=4
gpgkey=https://download.copr.fedorainfracloud.org/results/atim/starship/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF

# Wezterm repo
cat <<EOF >/etc/yum.repos.d/wezterm.repo
[copr:copr.fedorainfracloud.org:wezfurlong:wezterm-nightly]
name=Copr repo for wezterm-nightly owned by wezfurlong
baseurl=https://download.copr.fedorainfracloud.org/results/wezfurlong/wezterm-nightly/fedora-\$releasever-\$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
priority=4
gpgkey=https://download.copr.fedorainfracloud.org/results/wezfurlong/wezterm-nightly/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF

# Ghostty repo
cat <<EOF >/etc/yum.repos.d/ghostty.repo
[copr:copr.fedorainfracloud.org:pgdev:ghostty]
name=Copr repo for ghostty owned by pgdev
baseurl=https://download.copr.fedorainfracloud.org/results/pgdev/ghostty/fedora-\$releasever-\$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
priority=4
gpgkey=https://download.copr.fedorainfracloud.org/results/pgdev/ghostty/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF

cat <<EOF >/etc/yum.repos.d/tailscale.repo
[tailscale-stable]
name=Tailscale stable
baseurl=https://pkgs.tailscale.com/stable/fedora/\$basearch
enabled=1
priority=4
type=rpm
repo_gpgcheck=1
gpgcheck=1
gpgkey=https://pkgs.tailscale.com/stable/fedora/repo.gpg
EOF

cat <<EOF >/etc/yum.repos.d/terra.repo
[terra]
name=Terra $\releasever
#baseurl=https://repos.fyralabs.com/terra\$releasever
metalink=https://tetsudou.fyralabs.com/metalink?repo=terra\$releasever&arch=\$basearch
metadata_expire=6h
type=rpm
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-terra\$releasever
repo_gpgcheck=1
enabled=1
enabled_metadata=1
countme=1
priority=5
EOF
