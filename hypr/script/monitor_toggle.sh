#!/bin/bash

CONF="$HOME/.config/hypr/monitors.conf"

enable_edp() {
  sed -i 's/monitor = eDP-1, disabled, 1920x1080, 1920x0, 1/monitor = eDP-1, 1920x1080, 1920x0, 1/' "$CONF"
  echo "eDP-1 diaktifkan"
}

disable_edp() {
  sed -i 's/monitor = eDP-1, 1920x1080, 1920x0, 1/monitor = eDP-1, disabled, 1920x1080, 1920x0, 1/' "$CONF"
  echo "eDP-1 dinonaktifkan"
}

toggle_edp() {
  if grep -q "monitor = eDP-1, disabled" "$CONF"; then
    enable_edp
  else
    disable_edp
  fi
}

case "$1" in
enable)
  enable_edp
  ;;
disable)
  disable_edp
  ;;
*)
  toggle_edp
  ;;
esac

hyprctl reload
