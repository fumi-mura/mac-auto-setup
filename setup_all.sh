#!/bin/sh

# get directories without hidden
dirs=($(ls -d */))

# execute setup.sh in each directory
for dir in "${dirs[@]}"
do
  dir=${dir%/}
  if [ "$dir" = "git" ]; then
    echo "Skipping install git." # git is installed manually
    continue
  fi
  if [ -x "${dir}/setup.sh" ]; then
    (cd "${dir}" && ./setup.sh)
  else
    echo "Executable setup.sh not found in $dir"
  fi
done

# execute system setup.sh
# run separately to restart terminal and restart mac
sh system/setup_and_reboot.sh
