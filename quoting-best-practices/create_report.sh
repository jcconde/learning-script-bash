#!/bin/bash

# Create a report file for a single shipping container
# Author: Juanca

# Exercise: read the output directory from a command-line argument
container="$1"
directory="$2"

mkdir -p "$directory"
grep "$container" shipments.csv > "$directory/$container.csv"

echo "Wrote report $directory/$container.csv"