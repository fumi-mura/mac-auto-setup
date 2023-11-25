#!/bin/sh

# enable Expansion
defaults write com.apple.dock magnification -bool true;

# default and expansion size
defaults write com.apple.dock tilesize -integer 40;
defaults write com.apple.dock largesize -integer 70;

# display or not
defaults write com.apple.dock autohide -bool true;

# show recently used apps
defaults write com.apple.dock show-recents -bool false;

# speed of displaying dock
defaults write com.apple.dock autohide-delay -float 0.01;

# apply
killall Dock;
