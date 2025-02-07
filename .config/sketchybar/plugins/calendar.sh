#!/bin/bash

export LC_TIME="ru_RU.UTF-8"
sketchybar --set $NAME icon="$(date '+%a, %d %b')" label="$(date '+%H:%M')"
