#!/bin/sh

# get directories without hidden
dirs=($(ls -d */))

# execute setup.sh in each directory
for dir in "${dirs[@]}"
do
  dir=${dir%/}
  if [ -x "${dir}/setup.sh" ]; then
    (cd "${dir}" && ./setup.sh)
  else
    echo "Executable setup.sh not found in $dir"
  fi
done
