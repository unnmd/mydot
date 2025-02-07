#!/bin/bash

new_spaces=(
    #updates=on
    update_freq=1
    script="~/.config/sketchybar/plugins/new_spaces.sh"
)

sketchybar --add event yabai_space_update "yabai-space-updated"
sketchybar --add item yabai_space_update left
sketchybar --subscribe yabai_space_update window_created window_destroyed window_focus space_window_change \
           --set yabai_space_update script="${new_spaces[@]}"
