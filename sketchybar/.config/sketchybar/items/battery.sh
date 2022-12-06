#!/usr/bin/env sh

# Display the battery

# sketchbar  --add item battery right                      \
#            --set battery script="$PLUGIN_DIR/battery.sh" \
#            --set battery drawing=on \
#                         update_freq=10                  \
#                         icon.font="Hack Nerd Font:Bold:17.0"  \
#                         icon.color=0xffffffff                 \
#                         label.font="Hack Nerd Font:Bold:14.0" \
#                         icon.background.drawing=on      \
#                         icon.background.color=$BLUE     \
#                         icon.background.height=8        \
#                         icon.background.corner_radius=3 \
#                         icon.width=10                    \
#                         # icon.align=right                \
#                         # label.drawing=off               \
#                         # background.drawing=on           \
#                         # background.color=$BACKGROUND_2  \
#                         # background.height=8             \
#                         # background.corner_radius=3      \
#                         # align=left                      \

#           #  --subscribe battery system_wok


# sketchybar --add item clock right                        \
          #  --set clock   update_freq=10                  \
                        #  script="$PLUGIN_DIR/clock.sh"   \
                                                        #  \
sketchybar --add item battery right                            \
           --set battery script="$PLUGIN_DIR/battery.sh"       \
                         update_freq=60                        \
                         updates=when_shown                    \
                         drawing=on                            \
                         icon.font="Hack Nerd Font:Bold:17.0"  \
           --subscribe battery system_woke