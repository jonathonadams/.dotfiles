#!/usr/bin/env sh

SPACE_ICONS=("1" "2" "3" "4" "5" "6")
SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null"

sid=0
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))

  sketchybar --add space      space.$sid left                               \
             --set space.$sid associated_space=$sid                         \
                              icon=${SPACE_ICONS[i]}                        \
                              icon.padding_left=18                          \
                              icon.padding_right=18                         \
                              label.padding_right=24                        \
                              icon.highlight_color=$RED                     \
                              background.color=$BACKGROUND_1                \
                              background.drawing=on                         \
                              background.padding_left=-8                    \
                              background.padding_right=0                   \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.background.height=26                    \
                              label.background.drawing=on                   \
                              label.background.color=$BACKGROUND_2  \
                              label.background.corner_radius=9              \
                              label.drawing=off                             \
                              script="$PLUGIN_DIR/space.sh"                 \
                              click_script="$SPACE_CLICK_SCRIPT"
  # if [ "$sid" = "1" ]; then
    # sketchybar --set space.$sid background.padding_left=0
  # fi
done

