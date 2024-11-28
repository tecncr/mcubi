#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Get latest version and strip 'v' prefix

LATEST_VERSION=$(curl -sL https://api.github.com/repos/patitolabs/suvctl/tags \
  | jq -r '.[0].name')

VERSION_NUM=${LATEST_VERSION#v}

# Download latest release using dynamic version
curl -sL "https://github.com/patitolabs/suvctl/releases/download/${LATEST_VERSION}/suvctl_${VERSION_NUM}_linux_amd64v3.zip" -o /tmp/suvctl_${VERSION_NUM}_linux_amd64v3.zip

# Unzip (excluding LICENSE)
unzip -o /tmp/suvctl_${VERSION_NUM}_linux_amd64v3.zip -x LICENSE -d /usr/bin

# Remove downloaded zip
rm -f /tmp/suvctl_${VERSION_NUM}_linux_amd64v3.zip

# Set permissions
chmod +x /usr/bin/suvctl