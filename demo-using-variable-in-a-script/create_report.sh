#!/bin/bash -x

# Create a report file for a single shipping container
# Author: Juanca

# Exercise: Add a variable called 'directory'
# that determine where we save our output file

directory=reports

mkdir -p $directory
grep $1 shipments.csv > $directory/$1.csv

echo Wrote report $directory/$1.csv