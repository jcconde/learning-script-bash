#!/bin/bash

# Create a report file for a single shipping container
# Author: Juanca

if [[ ! $input_file ]]; then
  echo "Error: Input file not configured"
  exit 1
fi

if [[ -e $input_file ]]; then
  echo "Error: Input file $input_file does not exist"
  exit 1
fi

if [[ ! $1 ]]; then
  echo "Error: Missing parameter: container name"
  exit 1
fi
container="$1"

# Please add code that checks whether $2 has a value
# If not, we will use ~/reports as a default
if [[ $2 ]]; then
  directory="$2"
else
  directory="$HOME/reports"
fi

mkdir -p "$directory"
if grep -- "$container" shipments.csv > "$directory/$container.csv"
then
  echo "Wrote report $directory/$container.csv"
else
  echo "Container $container not found in input file"
fi

