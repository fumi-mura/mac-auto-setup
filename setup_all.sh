#!/bin/sh

# Get directories without hidden
dirs=($(ls -d */))

# Execute setup.sh in each directory
for dir in "${dirs[@]}"
do
  dir=${dir%/}
  if [ "$dir" = "git" ]; then
    echo "Skipping install git." # Git is installed manually
    continue
  fi
  if [ -x "${dir}/setup.sh" ]; then
    (cd "${dir}" && ./setup.sh)
  else
    echo "Executable setup.sh not found in $dir"
  fi
done

# Execute system setup.sh
# Run separately to restart terminal and restart mac
sh system/setup_and_reboot.sh
