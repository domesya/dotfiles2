#!/usr/bin/env bash

# Automatically gets the monitor name under the cursor/focused display
TARGET_OUTPUT=$(slurp -p -b 00000000 -f "%o")

if [ -n "$TARGET_OUTPUT" ]; then
    # Capture only that display and pipe to Satty
    grim -o "$TARGET_OUTPUT" - | satty --filename -
fi
