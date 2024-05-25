#!/bin/sh

# Tap to allow clicks.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# Change cursor movement speed.
defaults write -g com.apple.trackpad.scaling -float 15
