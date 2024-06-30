#!/bin/sh

brew install --cask shottr

mkdir ~/ScreenShot

defaults write com.apple.screencapture location ~/ScreenShot/;killall SystemUIServer
