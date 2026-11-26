#!/bin/bash

set -exou pipefail

dnf5 install -y htop \
  bind-utils \
  azure-cli \
  python3-pip \
  kubernetes1.37-client \
  k9s \
  jq \
  yq \
  helm \
  gh \
  ShellCheck \
  ripgrep \
  just \
  make \
  terraform

# Sops
SOPS_VERSION="v3.13.1"
curl -LO https://github.com/getsops/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux.amd64
mv sops-${SOPS_VERSION}.linux.amd64 /bin/sops
chmod +x /bin/sops

# flux CD
#curl -LO https://github.com/fluxcd/flux2/releases/download/v2.7.5/flux_2.7.5_linux_amd64.tar.gz
#tar xf flux_2.7.5_linux_amd64.tar.gz
#mv flux /bin/flux
#rm -f flux*

# databricks cli
curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh
