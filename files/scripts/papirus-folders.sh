#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

/usr/bin/papirus-folders -C bluegrey --theme Papirus-Dark
/usr/bin/papirus-folders -C bluegrey --theme Papirus
/usr/bin/papirus-folders -C bluegrey --theme ePapirus