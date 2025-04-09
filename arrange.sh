#!/bin/bash

for filepath in files/*; do
    [[ -f "$filepath" ]] || continue

    filename=$(basename "$filepath")
    first_char=${filename:0:1}
    lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    [[ "$lower_char" =~ [a-z] && -d "$lower_char" ]] && mv "$filepath" "$lower_char/"
done
