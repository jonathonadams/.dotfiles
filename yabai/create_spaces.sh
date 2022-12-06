#!/bin/sh

# DESIRED_SPACES_PER_DISPLAY=4
# CURRENT_SPACES="$(yabai -m query --displays | jq -r '.[].spaces | @sh')"

# DELTA=0
# while read -r line
# do
#   LAST_SPACE="$(echo "${line##* }")"
#   LAST_SPACE=$(($LAST_SPACE+$DELTA))
#   EXISTING_SPACE_COUNT="$(echo "$line" | wc -w)"
#   MISSING_SPACES=$(($DESIRED_SPACES_PER_DISPLAY - $EXISTING_SPACE_COUNT))
#   if [ "$MISSING_SPACES" -gt 0 ]; then
#     for i in $(seq 1 $MISSING_SPACES)
#     do
#       yabai -m space --create "$LAST_SPACE"
#       LAST_SPACE=$(($LAST_SPACE+1))
#     done
#   elif [ "$MISSING_SPACES" -lt 0 ]; then
#     for i in $(seq 1 $((-$MISSING_SPACES)))
#     do
#       yabai -m space --destroy "$LAST_SPACE"
#       LAST_SPACE=$(($LAST_SPACE-1))
#     done
#   fi
#   DELTA=$(($DELTA+$MISSING_SPACES))
# done <<< "$CURRENT_SPACES"


# Destroy all spaces larger than 6
for _ in $(yabai -m query --spaces | jq '.[].index | select(. > 6)'); do
  yabai -m space --destroy 7
done

# Function to create a space
function setup_space {
  local idx="$1"
  local name="$2"
  local space=
  echo "setup space $idx : $name"

  space=$(yabai -m query --spaces --space "$idx")
  if [ -z "$space" ]; then
    yabai -m space --create
  fi

  yabai -m space "$idx" --label "$name"
}

setup_space 1 terminal 
setup_space 2 code
setup_space 3 web
setup_space 4 media
setup_space 5 admin
setup_space 6 other
