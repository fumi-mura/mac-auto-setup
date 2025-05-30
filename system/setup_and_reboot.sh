#!/bin/sh

# Appearance

## Set to dark mode.
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

## Set sidebar icon size to small.
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Control center

## Display bluetooth icon in menu bar.
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true

# Desktop

## Turn off "Automatically rearrange operating space based on latest usage" setting.
defaults write com.apple.dock mru-spaces -bool false

# Dock

## Enable expansion.
defaults write com.apple.dock magnification -bool true

## Default and expansion size.
defaults write com.apple.dock tilesize -int 40
defaults write com.apple.dock largesize -int 70

## Display or not.
defaults write com.apple.dock autohide -bool true

## Show recently used apps.
defaults write com.apple.dock show-recents -bool false

## Speed of displaying dock.
defaults write com.apple.dock autohide-delay -float 0


## Speed of hiding dock.
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Rock screen

## Set display sleep time on battery use.
sudo pmset -b displaysleep 10

# Keyboard

## Repeat speed.
defaults write -g KeyRepeat -int 2

## Time to repeat input recognition.
defaults write -g InitialKeyRepeat -int 15

## Turn off automatic spelling conversion while typing English.
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

## Turn off automatic capitalization of sentence beginnings.
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Trackpad

## Tap to allow clicks.
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

## Change cursor movement speed.
defaults write -g com.apple.trackpad.scaling -float 3

# Finder

## Show Library folder.
chflags nohidden ~/Library

## Show Path bar.
defaults write com.apple.finder ShowPathbar -bool true

## Show Quit button(Deletion is only possible from GUI).
defaults write com.apple.Finder QuitMenuItem -bool true

# Screenshot

## Make screenshots directly.
mkdir ~/ScreenShot

## Set screenshot save location.
defaults write com.apple.screencapture location ~/ScreenShot/

# Reboot

## Reboot is required for this settings to reflect.
killall Dock
killall Finder
killall SystemUIServer
sudo reboot
