#!/bin/bash

NERROR_PATH="$(readlink -f lib/nerror)"
GITH_PATH="$(readlink -f gith)"
ETC_PATH="/etc/gith"
INSTALL_PATH="/usr/local/bin"

[[ -f "$NERROR_PATH" ]] || $(echo "$NERROR_PATH file invalid" && exit 1)
[[ -f "$GITH_PATH" ]] || $(echo "$GITH_PATH file invalid" && exit 1)
[[ -d "$INSTALL_PATH" ]] || $(echo "$INSTALL_PATH folder invalid" && exit 1)

sudo install -d "$ETC_PATH" || $(echo "Failed installing $ETC_PATH" && exit 1)
sudo install "$NERROR_PATH" "$ETC_PATH" || $(echo "Failed installing $NERROR_PATH" && exit 1)
sudo install "$GITH_PATH" "$INSTALL_PATH" || $(echo "Failed installing $GITH_PATH" && exit 1)

printf "Gith installed\n"

exit 0