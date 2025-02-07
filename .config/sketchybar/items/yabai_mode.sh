yabai_mode=(
    label.font="JetBrainsMono Nerd Font:12.0"
    script="$PLUGIN_DIR/yabai_mode.sh"
    click_script="$PLUGIN_DIR/yabai_mode_click.sh"
)

sketchybar -m --add item yabai_mode right \
              --set yabai_mode update_freq=3 \
              --set yabai_mode script="${yabai_mode[@]}" \
              --set yabai_mode click_script="${yabai_mode[@]}" \
              --subscribe yabai_mode space_change
