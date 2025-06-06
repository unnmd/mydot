#!/bin/bash

SPACE_ICONS=("main" "term" "telegram" "chatGPT" "code" "web" "rdp" "mail" "notes" "misc")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))

  space=(
    space=$sid
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=10
    padding_left=2
    padding_right=2
    label.padding_right=20
    #icon.highlight_color=$RED
    icon.highlight_color=0xFFEBDBB2
    #label.color=$GREY
    #label.highlight_color=$WHITE
    label.highlight_color=0xFFEBDBB2
    label.font="sketchybar-app-font:Regular:12.0"
    label.y_offset=-1
    background.color=$BACKGROUND_1
    background.border_color=$BACKGROUND_2
    script="$PLUGIN_DIR/space.sh"
    drawing=off
  )

  sketchybar --add space space.$sid left    \
             --set space.$sid "${space[@]}" \
             --subscribe space.$sid mouse.clicked
done

space_creator=(
  #icon=􀆊
  icon.font="$FONT:Heavy:12.0"
  padding_left=10
  padding_right=8
  label.drawing=off
  display=active
  #click_script='yabai -m space --create'
  script="$PLUGIN_DIR/space_windows.sh"
  icon.color=$WHITE
)

sketchybar --add item space_creator left               \
           --set space_creator "${space_creator[@]}"   \
           --subscribe space_creator space_windows_change
