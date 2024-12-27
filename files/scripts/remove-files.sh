#!/bin/bash

set -ouex pipefail

# Array containing the list of files to remove
files_to_remove=("/usr/share/gnome/autostart/libcanberra-login-sound.desktop" "/40-rpmostree-pkg-usermod-qemu-kvm.conf")

# Loop through each file in the array
for file in "${files_to_remove[@]}"; do
    if [ -e "$file" ]; then
        # Check if the file exists
        rm "$file" && echo "Removed $file"
    else
        # Print a warning if the file doesn't exist
        echo "File not found: $file"
    fi
done