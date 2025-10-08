#!/bin/bash

# Script to rewrite commit messages for history cleanup
# Makes first line lowercase and truncates to 60 chars

while IFS= read -r line; do
    if [[ -z "$first_line_done" ]]; then
        # Process first line: lowercase and truncate
        line=$(echo "$line" | tr '[:upper:]' '[:lower:]')
        line=${line:0:60}
        first_line_done=1
    fi
    echo "$line"
done