#!/usr/bin/env bash

# Использование:
#   cycle.sh focus west
#   cycle.sh warp east
#
# Аргументы:
#   $1 = "focus" или "warp"
#   $2 = одно из направлений: "west", "east", "north", "south"

mode="$1"       # "focus" или "warp"
direction="$2"  # "west"/"east"/"north"/"south"

cmd="--$mode"   # превратим в "--focus" или "--warp"

# 1) Сначала пытаемся сделать обычную команду, например:
#    yabai -m window --focus west
#    если это возможно и успех, то скрипт завершается.
# 2) Если команда вернула ошибку (нет окна в ту сторону), то
#    находим «противоположное» окно (самое крайнее) и фокусируем/перемещаемся к нему.

if ! yabai -m window $cmd "$direction"; then
  case "$direction" in
    "west")
      # Если нет окон слева, берём «самое правое» окно
      # (по максимальному x+width)
      id="$(yabai -m query --windows --space | \
             jq -r 'max_by(.frame.x + .frame.w).id')"
      ;;

    "east")
      # Если нет окон справа, берём «самое левое» окно
      # (по минимальному x)
      id="$(yabai -m query --windows --space | \
             jq -r 'min_by(.frame.x).id')"
      ;;

    "north")
      # Если нет окна сверху, берём «самое нижнее» окно
      # (по максимальному y+height)
      id="$(yabai -m query --windows --space | \
             jq -r 'max_by(.frame.y + .frame.h).id')"
      ;;

    "south")
      # Если нет окна снизу, берём «самое верхнее» окно
      # (по минимальному y)
      id="$(yabai -m query --windows --space | \
             jq -r 'min_by(.frame.y).id')"
      ;;
  esac

  # Если что-то нашли, делаем повторную команду --focus/--warp
  [ -n "$id" ] && yabai -m window $cmd "$id"
fi
