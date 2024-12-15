#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

/usr/bin/papirus-folders -C violet --theme Papirus-Dark
/usr/bin/papirus-folders -C violet --theme Papirus
/usr/bin/papirus-folders -C violet --theme ePapirus