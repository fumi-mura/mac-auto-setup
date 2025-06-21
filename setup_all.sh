#!/bin/sh

# Execute pre setup sh.
sh 00.pre_setup/setup.sh

# Execute homebrew applications install sh.
sh 01.homebrew_applications/setup.sh

# Execute app store applications install sh.
sh 02.app_store_applications/setup.sh

# Execute npm applications install sh.
sh 03.npm_applications/setup.sh

# Execute system_settings setup.sh.
# Need to restart Mac.
sh 99.system_settings/setup_and_reboot.sh
