#!/usr/bin/env sh

POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

sketchybar --add       item            github.octocat right               \
           --set       github.octocat  update_freq=180                    \
                                       icon=":git_hub:"                   \
                                       icon.color=$BLUE                   \
                                       icon.font="sketchybar-app-font:Regular:16.0" \
                                       label.highlight_color=$BLUE        \
                                       popup.align=right                  \
                                       script="$PLUGIN_DIR/github.sh"     \
                                       click_script="$POPUP_CLICK_SCRIPT" \
           --subscribe github.octocat  mouse.entered                      \
                                       mouse.exited                       \
                                       mouse.exited.global                \
                                                                          \
           --add       item            github.template popup.github.octocat  \
           --set       github.template drawing=off                        \
                                       background.corner_radius=12        \
                                       background.padding_left=7          \
                                       background.padding_right=7         \
                                       background.color=$BLACK            \
                                       background.drawing=off             \
                                       icon.background.height=2           \
                                       icon.background.y_offset=-12