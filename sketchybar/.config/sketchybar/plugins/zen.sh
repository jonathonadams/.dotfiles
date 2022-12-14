#!/bin/sh

zen_on() {
  sketchybar --set github.octocat drawing=off \
             --set apple.logo drawing=off \
             --set calendar icon.drawing=off \
             --set system.yabai drawing=off \
             --set front_app drawing=off \
             --set volume_alias drawing=off \
             --set battery drawing=off \
             --set spotify.anchor drawing=off \
             --set spotify.play updates=off \
             --set brew drawing=off \
             --bar padding_left=18
}

zen_off() {
  sketchybar --set github.octocat drawing=on \
             --set apple.logo drawing=on \
             --set calendar icon.drawing=on \
             --set front_app drawing=on \
             --set system.yabai drawing=on \
             --set volume_alias drawing=on \
             --set battery drawing=on \
             --set spotify.play updates=on \
             --set brew drawing=on \
             --bar padding_left=7
}

if [ "$1" = "on" ]; then
  zen_on
elif [ "$1" = "off" ]; then
  zen_off
else
  if [ "$(sketchybar --query apple.logo | jq -r ".geometry.drawing")" = "on" ]; then
    zen_on
  else
    zen_off
  fi
fi

