#!/bin/bash

directory="$1"

cd "$directory" || exit 1

shift

for component in "$@"; do
    count=$(grep -roh "\b$component\b" . | wc -l)
    echo "$component - $count"
done
