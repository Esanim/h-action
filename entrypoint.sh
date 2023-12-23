#!/bin/sh -l

echo "H $1"
curl -L https://dl.dagger.io/dagger/install.sh | sh
mix deps.get
dagger run mix elixir_with_dagger.test
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
