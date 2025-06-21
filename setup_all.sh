#!/bin/sh

# Execute pre setup sh.
sh 00.pre_setup/setup.sh

# Get directories without hidden.
echo "Start install homebrew applications script."

dirs=(01.homebrew_applications/*/)

# Execute setup.sh in each directory.
for dir in "${dirs[@]}"
do
  dir=${dir%/}
  dir_name=$(basename "$dir")
  if [ -x "${dir}/setup.sh" ]; then
    (cd "${dir}" && ./setup.sh)
  else
    echo "Executable setup.sh not found in $dir"
  fi
done

# Execute app store applications install sh.
sh 02.app_store_applications/setup.sh

# Execute npm applications install sh.
sh 03.npm_applications/setup.sh

# Execute system_settings setup.sh.
# Need to restart Mac.
sh 99.system_settings/setup_and_reboot.sh
