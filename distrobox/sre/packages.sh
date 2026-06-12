#!/bin/bash

set -exou pipefail

dnf5 install -y htop \
  bind-utils \
  azure-cli \
  python3-pip \
  kubectl \
  google-cloud-cli \
  google-cloud-cli-gke-gcloud-auth-plugin \
  jq \
  yq \
  helm \
  gh \
  ShellCheck \
  ripgrep \
  just \
  make

# Terraform
# In Fedora44 the hasicorp repo only have Terraform 1.15+ so we must install Terraform manually
TERRAFORM_VERSION=1.14.6
curl -fsSL "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -o /tmp/terraform.zip
unzip /tmp/terraform.zip -d /usr/local/bin
rm -f /tmp/terraform.zip

# Sops
SOPS_VERSION="v3.13.1"
curl -LO https://github.com/getsops/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux.amd64
mv sops-${SOPS_VERSION}.linux.amd64 /bin/sops
chmod +x /bin/sops

# k9s
curl -LO https://github.com/derailed/k9s/releases/download/v0.50.16/k9s_linux_amd64.rpm
rpm -i k9s_linux_amd64.rpm
rm -f k9s_linux_amd64.rpm

# flux CD
curl -LO https://github.com/fluxcd/flux2/releases/download/v2.7.5/flux_2.7.5_linux_amd64.tar.gz
tar xf flux_2.7.5_linux_amd64.tar.gz
mv flux /bin/flux
rm -f flux*

# databricks cli
curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh
