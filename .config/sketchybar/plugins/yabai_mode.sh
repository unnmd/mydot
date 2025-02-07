#!/bin/bash

space_number=$(yabai -m query --spaces --space | jq -r .index)
yabai_mode=$(yabai -m query --spaces --space | jq -r .type)

case "$yabai_mode" in
    bsp)
    sketchybar -m --set yabai_mode label="b"
    ;;
    stack)
    sketchybar -m --set yabai_mode label="s"
    ;;
    float)
    sketchybar -m --set yabai_mode label="f"
    ;;
esac
