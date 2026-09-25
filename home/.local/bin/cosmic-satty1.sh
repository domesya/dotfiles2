#!/usr/bin/env bash

GEOM="$(slurp)"

if [ -z "$GEOM" ]; then
  exit 0
fi

# Pass grim capture through slurp region selection into satty
grim -g "$GEOM" - | satty --filename -
