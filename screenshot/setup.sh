#!/bin/sh

mkdir ~/screenshot

defaults write com.apple.screencapture location ~/screenshot/;killall SystemUIServer
