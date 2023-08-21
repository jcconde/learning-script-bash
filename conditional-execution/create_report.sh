#!/bin/bash

# Create a report file for a single shipping container
# Author: Juanca

if [[ ! $1 ]]; then
  echo "Error: Missing parameter: container name"
  exit 1
fi

container="$1"
directory="$2"


mkdir -p "$directory"
if grep -- "$container" shipments.csv > "$directory/$container.csv"
then
  echo "Wrote report $directory/$container.csv"
else
  echo "Container $container not found in input file"
fi

