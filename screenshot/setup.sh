#!/bin/sh

mkdir ~/ScreenShot

defaults write com.apple.screencapture location ~/ScreenShot/;killall SystemUIServer
