#!/bin/sh

# Appearance

## Set to dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

## Set sidebar icon size to small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Contorol center

## Turn on the numerical battery display

defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Desktop

## Turn off "Automatically rearrange operating space based on latest usage" setting

defaults write com.apple.dock mru-spaces -bool false

# Dock

## enable expansion
defaults write com.apple.dock magnification -bool true

## default and expansion size
defaults write com.apple.dock tilesize -integer 40
defaults write com.apple.dock largesize -integer 70

## display or not
defaults write com.apple.dock autohide -bool true

## show recently used apps
defaults write com.apple.dock show-recents -bool false

## speed of displaying dock
defaults write com.apple.dock autohide-delay -float 0.01

# Display

## Turn off automatic luminosity adjustment
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false

# Rock screen

## Set display sleep time on battery use
sudo pmset -b displaysleep 10

# Keyboard

## Repeat speed.
defaults write -g KeyRepeat -int 2

## Time to repeat input recognition.
defaults write -g InitialKeyRepeat -int 15

## Turn off adjust brightness when ambient light is dim
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false

## Turn off automatic spelling conversion while typing English
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

## Turn off automatic capitalization of sentence beginnings
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Trackpad

## Tap to allow clicks.
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

## Change cursor movement speed.
defaults write -g com.apple.trackpad.scaling -float 3

# Reboot

## Reboot is required for this settings to reflect.

killall Dock
sudo reboot
