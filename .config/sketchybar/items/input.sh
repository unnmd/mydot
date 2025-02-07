#!/bin/bash

inputcheck=(
  label.font="$FONT:Black:12.0"
  padding_right=15
  update_freq=1
  script="$PLUGIN_DIR/input.sh"
)

sketchybar --add item inputcheck right       \
           --set inputcheck "${inputcheck[@]}" \
           --subscribe inputcheck system_woke
