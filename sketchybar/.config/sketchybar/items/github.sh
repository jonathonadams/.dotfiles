#!/bin/bash

POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

github_octocat=(
  update_freq=180
  icon=":git_hub:"
  icon.font="sketchybar-app-font:Regular:16.0"
  label=$LOADING
  label.highlight_color=$BLUE
  popup.align=right
  script="$PLUGIN_DIR/github.sh"
  click_script="$POPUP_CLICK_SCRIPT"
)

github_template=(
  drawing=off
  background.corner_radius=12
  padding_left=7
  padding_right=7
  icon.background.height=2
  icon.background.y_offset=-12
)

sketchybar --add item github.octocat right                 \
           --set github.octocat "${github_octocat[@]}"     \
           --subscribe github.octocat  mouse.entered       \
                                    mouse.exited           \
                                    mouse.exited.global    \
                                                           \
           --add item github.template popup.github.octocat \
           --set github.template "${github_template[@]}"
