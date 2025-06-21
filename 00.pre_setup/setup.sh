#!/bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [ "$(uname -m)" = "arm64" ] ; then
  eval "$(/opt/homebrew/bin/brew shellenv)" > /dev/null
fi

# Setup zsh
cp ../dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

# Setup dotfiles
## .gitconfig
cp ../dotfiles/.gitconfig ~/.gitconfig

## .gitignore
mkdir -p ~/.config/git && cp ../dotfiles/.gitignore_global ~/.config/git/ignore

## .zprofile
cp ../dotfiles/.zprofile ~/.zprofile

## .zshrc
cp ../dotfiles/.zshrc ~/.zshrc
