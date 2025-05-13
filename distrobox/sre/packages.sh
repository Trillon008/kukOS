#!/bin/bash

set -exou pipefail

dnf install -y htop \
  bind-utils \
  azure-cli \
  python3-pip \
  terraform-1.10.5 \
  kubectl \
  google-cloud-cli \
  google-cloud-cli-gke-gcloud-auth-plugin \
  jq \
  helm \
  bat

# Sops
curl -LO https://github.com/getsops/sops/releases/download/v3.9.0/sops-v3.9.0.linux.amd64
mv sops-v3.9.0.linux.amd64 /bin/sops
chmod +x /bin/sops

# k9s
curl -LO https://github.com/derailed/k9s/releases/download/v0.50.4/k9s_linux_amd64.rpm
rpm -i k9s_linux_amd64.rpm
rm -f k9s_linux_amd64.rpm

# flux CD
curl -LO https://github.com/fluxcd/flux2/releases/download/v2.5.1/flux_2.5.1_linux_amd64.tar.gz
tar xf flux_2.5.1_linux_amd64.tar.gz
mv flux /bin/flux
rm -f flux*

# databricks cli
curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh
