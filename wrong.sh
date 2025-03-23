#!/bin/bash
read -p "Your Path : " path
cd "$path" || {echo "Wrong path;"}

for file in *; do
if [[-f "$file"]]; then
size=$(du -sh "$file" | cut -f1)
echo $file -$size"
fi
done
