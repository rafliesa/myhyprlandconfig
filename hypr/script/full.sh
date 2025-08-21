CONF="$HOME/.config/hypr/general.conf"

gaps_in=$(grep -Po '^\s*gaps_in\s*=\s*\K\d+' "$CONF")
gaps_out=$(grep -Po '^\s*gaps_out\s*=\s*\K\d+' "$CONF")
rounding=$(grep -Po '^\s*rounding\s*=\s*\K\d+' "$CONF")

if [ "$gaps_in" -eq 0 ] && [ "$gaps_out" -eq 0 ] && [ "$rounding" -eq 0 ]; then
  echo "Restoring default config..."
  sed -i 's/^\(\s*gaps_in\s*=\s*\).*/\12/' "$CONF"
  sed -i 's/^\(\s*gaps_out\s*=\s*\).*/\15/' "$CONF"
  sed -i 's/^\(\s*rounding\s*=\s*\).*/\110/' "$CONF"
  hyprctl dispatch exec waybar
else
  echo "Applying no-gaps config..."
  sed -i 's/^\(\s*gaps_in\s*=\s*\).*/\10/' "$CONF"
  sed -i 's/^\(\s*gaps_out\s*=\s*\).*/\10/' "$CONF"
  sed -i 's/^\(\s*rounding\s*=\s*\).*/\10/' "$CONF"
  pkill waybar
fi

hyprctl reload
