#!/usr/bin/bash

# Lock the current launch script to prevent multiple instance launch
LOCKFILE="/tmp/calamares.lock"
if [ -e "$LOCKFILE" ] && kill -0 "$(cat $LOCKFILE)" 2>/dev/null; then
    echo "Calamares is already running. Exiting."
    exit 1
fi
echo $$ > "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

DIR="/etc/calamares"
KERNEL=`uname -r`

if [[ -d "/run/archiso/copytoram" ]]; then
	sudo sed -i -e 's|/run/archiso/bootmnt/arch/x86_64/airootfs.sfs|/run/archiso/copytoram/airootfs.sfs|g' "$DIR"/modules/unpackfs.conf
	sudo sed -i -e "s|/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz-linux|/usr/lib/modules/$KERNEL/vmlinuz|g" "$DIR"/modules/unpackfs.conf
fi

# Detect the desktop environment
DE="${XDG_CURRENT_DESKTOP,,}"

if [[ "$DE" == *"gnome"* ]]; then
    sudo calamares
else
    sudo -E calamares -d
fi
