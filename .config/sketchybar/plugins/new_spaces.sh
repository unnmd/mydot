#!/bin/bash

# Названия иконок для пространств
SPACE_ICONS=("main" "term" "telegram" "chatGPT" "code" "web" "rdp" "mail" "notes" "misc")

# Получаем данные обо всех пространствах через yabai
spaces=$(yabai -m query --spaces)

for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i+1))

  # Получаем информацию о текущем пространстве
  space_info=$(echo "$spaces" | jq -c ".[] | select(.index==$sid)")

  # Пропускаем пространство, если оно не существует
  if [ -z "$space_info" ]; then
    continue
  fi

  # Проверяем количество окон в пространстве
  window_count=$(echo "$space_info" | jq ".windows | length")

  # Если пространство пустое, удаляем его из SketchyBar
  if [ "$window_count" -eq 0 ]; then
    echo "Removing empty space.$sid"
    sketchybar --remove "space.$sid" 2>/dev/null
    continue
  fi

  # Проверяем, существует ли пространство в SketchyBar
  if sketchybar --query "space.$sid" &>/dev/null; then
    # Если пространство уже существует, обновляем его
    echo "Updating existing space.$sid"
    sketchybar --set "space.$sid" icon="${SPACE_ICONS[i]}"
    continue
  fi

  # Параметры для нового пространства
  space=(
    space=$sid
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=10
    padding_left=2
    padding_right=2
    label.padding_right=20
    icon.highlight_color=$RED
    label.color=$GREY
    label.highlight_color=$WHITE
    label.font="sketchybar-app-font:Regular:12.0"
    label.y_offset=-1
    background.color=$BACKGROUND_1
    background.border_color=$BACKGROUND_2
    script="$PLUGIN_DIR/space_windows.sh"
  )

  # Добавляем пространство в SketchyBar
  echo "Adding new space.$sid"
  sketchybar --add item space.$sid left \
             --set space.$sid "${space[@]}"
done
