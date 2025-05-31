#!/bin/sh

# Get directories without hidden.
dirs=(01.homebrew_applications/*/)

echo "Start install homebrew applications script."

# Execute setup.sh in each directory.
for dir in "${dirs[@]}"
do
  dir=${dir%/}
  dir_name=$(basename "$dir")
  if [ "$dir_name" = "git" ]; then
    echo "Skipping install git." # Git is installed manually.
    continue
  fi
  if [ -x "${dir}/setup.sh" ]; then
    (cd "${dir}" && ./setup.sh)
  else
    echo "Executable setup.sh not found in $dir"
  fi
done

# Execute app store applications install sh.
sh 02.app_store_applications/setup.sh

# Execute system_settings setup.sh.
# Need to restart Mac.
sh 03.system_settings/setup_and_reboot.sh
