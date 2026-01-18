#!/bin/bash

set -exou pipefail

dnf5 install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

rpm-ostree install \
  wireguard-tools \
  libatomic \
  pavucontrol-qt \
  neovim \
  restic \
  ripgrep \
  starship \
  mpv \
  bat \
  yt-dlp \
  btop \
  openfortivpn \
  plasma-nm-fortisslvpn \
  NetworkManager-fortisslvpn \
  wezterm \
  tlp \
  tailscale \
  zed

rpm-ostree uninstall \
  firefox \
  firefox-langpacks \
  vim-enhanced \
  vim-common \
  vim-minimal \
  google-noto-sans-javanese-fonts \
  google-noto-sans-balinese-fonts \
  google-noto-sans-sundanese-fonts

# ## Download cursor cli
# EXTRACT_DIR=/ctx/cursor-cli
# DOWNLOAD_URL="https://downloads.cursor.com/lab/2026.01.17-d239e66/${OS}/${ARCH}/agent-cli-package.tar.gz"

# mkdir -p "${EXTRACT_DIR}"
# if curl -fSL --progress-bar "${DOWNLOAD_URL}" \
#   | tar --strip-components=1 -xzf - -C "${TEMP_EXTRACT_DIR}"; then
#   echo "Success"
# else
#     echo "Download failed. Please check your internet connection and try again."
#     exit 1
# fi
# mv "${EXTRACT_DIR}" /bin/cur
