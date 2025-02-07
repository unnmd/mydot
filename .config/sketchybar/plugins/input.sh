#!/bin/bash

if [ "$(inputcheck)" = "ABC" ]; then
    sketchybar --set $NAME label="EN"
elif [ "$(inputcheck)" = "RussianWin" ]; then
    sketchybar --set $NAME label="RU"
fi
#sketchybar --set $NAME icon="$(inputcheck)"
