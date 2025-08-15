#!/bin/bash

CONFIG_FILE="$HOME/.config/hypr/hyprland.conf"
LINE="source = ~/.config/hypr/transparent.conf"

if grep -Fxq "$LINE" "$CONFIG_FILE"; then
  sed -i "s|^$LINE|# $LINE|" "$CONFIG_FILE"
  echo "Transparent config DISABLED."
elif grep -Fxq "# $LINE" "$CONFIG_FILE"; then
  sed -i "s|^# $LINE|$LINE|" "$CONFIG_FILE"
  echo "Transparent config ENABLED."
else
  echo "Baris transparent.conf tidak ditemukan di $CONFIG_FILE"
  exit 1
fi

hyprctl reload
