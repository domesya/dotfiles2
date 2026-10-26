#!/bin/sh
export PATH="$PATH:$HOME/.local/bin"
scrot -s -e 'satty --filename $f'
