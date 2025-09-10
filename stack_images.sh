#!/bin/bash
# Usage: ./stack_images.sh PREFIX START END OUTPUT.png
# Example: ./stack_images.sh img 1 10 stacked.png

if [ $# -ne 4 ]; then
    echo "Usage: $0 PREFIX START END OUTPUT.png"
    exit 1
fi

prefix="$1"
start="$2"
end="$3"
output="$4"

tmp="tmp.png"

# Start with the first image
cp "${prefix}${start}.png" "$tmp"

# Append the rest
for i in $(seq $((start+1)) $end); do
    convert "$tmp" "${prefix}${i}.png" -append "$tmp"
done

mv "$tmp" "$output"
echo "Stacked image saved as $output"

