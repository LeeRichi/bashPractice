#!/bin/bash

directory="$1"

cd "$directory" || exit 1

declare -A commit_counts

if [ "$#" == 1 ]; then
    git shortlog -sn | while read -r line; do
        author=$(echo "$line" | awk '{print $2}')
        count=$(echo "$line" | awk '{print $1}')
        echo "$author - $count"
    done
else
    for author in "${@:2}"; do
        count=$(git shortlog -sn --author="$author" | awk '{print $1}')
        echo "$author - $count"
    done
fi

