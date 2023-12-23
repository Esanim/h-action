#!/bin/sh -l

echo "H $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
