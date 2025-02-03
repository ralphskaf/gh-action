#!/bin/bash

# Path to the counter file
COUNTER_FILE="counter.txt"

# Check if the file exists
if [ ! -f "$COUNTER_FILE" ]; then
  echo "0" > "$COUNTER_FILE"
fi

# Read the current counter value
COUNTER=$(cat "$COUNTER_FILE")

# Increment the counter
COUNTER=$((COUNTER + 1))

# Write the updated counter back to the file
echo "$COUNTER" > "$COUNTER_FILE"

# Commit the change
git config --global user.email "ralphskaff97@gmail.com"
git config --global user.name "ralphskaf"
git add "$COUNTER_FILE"
git commit -m "Increment counter to $COUNTER"
