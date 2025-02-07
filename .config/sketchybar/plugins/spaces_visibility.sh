#!/bin/bash

# Пример: вы можете хранить максимум 10 Spaces, как в массиве SPACE_ICONS. 
# Либо пробегаться по ВСЕМ реально существующим (через Yabai).
# Допустим, у нас 10.

MAX_SPACES=10

# Запросим список пространств у yabai
SPACES_JSON=$(yabai -m query --spaces)

for (( sid=1; sid<=$MAX_SPACES; sid++ )); do
  # Найдём соответствующий кусок JSON по "index": sid
  # Можно использовать jq-фильтр.
  windows_count=$(echo "$SPACES_JSON" | jq "[.[] | select(.index == $sid)][0].windows | length")
  
  # Если в системе нет такого пространства (или оно не принадлежит текущему дисплею)
  # windows_count может оказаться null. Проверим это:
  if [ "$windows_count" = "null" ]; then
    # Такое пространство вообще не существует или нет на текущем мониторе,
    # можно спрятать или оставить как есть — на ваше усмотрение.
    sketchybar --set space.$sid drawing=off
    continue
  fi

  # Если окон нет — выключить, если есть — включить
  if [ "$windows_count" -gt 0 ]; then
    sketchybar --set space.$sid drawing=on
  else
    sketchybar --set space.$sid drawing=off
  fi
done
