#!/bin/bash

set -exou pipefail

dnf install -y htop \
  bind-utils \
  azure-cli \
  terraform-1.7.3 \
  kubectl \
  jq \
  bat

# Sops
curl -LO https://github.com/getsops/sops/releases/download/v3.9.0/sops-v3.9.0.linux.amd64
mv sops-v3.9.0.linux.amd64 /usr/local/bin/sops
chmod +x /usr/local/bin/sops

# k9s
curl -LO https://github.com/derailed/k9s/releases/download/v0.32.5/k9s_linux_amd64.rpm
rpm -i k9s_linux_amd64.rpm
rm -f k9s_linux_amd64.rpm

# databricks cli
curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh
