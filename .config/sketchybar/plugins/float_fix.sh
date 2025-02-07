#!/bin/bash

# Устанавливаем высоту sketchybar (измените при необходимости)
sketchybar_height=30

# Получаем размеры экрана (округляем до целых)
screen_width=$(yabai -m query --displays | jq '.[0].frame.w' | awk '{print int($1)}')
screen_height=$(yabai -m query --displays | jq '.[0].frame.h' | awk '{print int($1)}')

# Получаем ID текущего активного окна
window_id=$(yabai -m query --windows --window | jq '.id')

# Получаем размеры окна (округляем до целых)
window_width=$(yabai -m query --windows --window | jq '.frame.w' | awk '{print int($1)}')
window_height=$(yabai -m query --windows --window | jq '.frame.h' | awk '{print int($1)}')

# Вычисляем новые координаты (центр окна, но ниже sketchybar)
window_x=$(( (screen_width - window_width) / 2 ))
window_y=$(( sketchybar_height + (screen_height - sketchybar_height - window_height) / 2 ))

# Проверяем, что ID окна получен
if [[ -z "$window_id" ]]; then
    echo "Ошибка: не удалось получить ID окна"
    exit 1
fi

# Применяем изменения
yabai -m window "$window_id" --move abs:$window_x:$window_y
