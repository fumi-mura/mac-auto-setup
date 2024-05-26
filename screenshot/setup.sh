#!/bin/sh

mkdir ~/ScreenShot

brew install --cask shottr

defaults write com.apple.screencapture location ~/ScreenShot/;killall SystemUIServer
