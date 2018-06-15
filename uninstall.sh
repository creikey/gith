#!/bin/bash

ETC_PATH="/etc/gith"
INSTALLED_PATH="/usr/local/bin/gith"

sudo rm -rf "$ETC_PATH" || $(echo "Failed removing $ETC_PATH" && exit 1)
sudo rm -f "$INSTALLED_PATH" || $(echo "Failed removing $INSTALLED_PATH" && exit 1)

printf "Uninstalled\n"