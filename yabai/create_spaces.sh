#!/bin/sh

DESIRED_SPACES=6
# Destroy all spaces greater than the desired scaces
for _ in $(yabai -m query --spaces | jq ".[].index | select(. > ${DESIRED_SPACES} - 1)"); do
  yabai -m space --destroy $((${DESIRED_SPACES} + 1))
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

setup_space 1 terminal      # Kitty
setup_space 2 code          # VS Cods
setup_space 3 web
setup_space 4 email-calendar 
setup_space 5 slack-spotify
setup_space 6 messeges