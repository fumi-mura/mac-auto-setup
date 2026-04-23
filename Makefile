SHELL := /bin/bash

.DEFAULT_GOAL := help

.PHONY: help install brew link mas macos

help:
	@printf "Available targets:\n"
	@printf "  make install  # Run full Mac setup\n"
	@printf "  make brew     # Install Homebrew packages from Brewfile\n"
	@printf "  make link     # Link dotfiles into HOME\n"
	@printf "  make mas      # Install App Store applications\n"
	@printf "  make macos    # Apply macOS settings\n"

install:
	@./scripts/install.sh

brew:
	@brew bundle --file="$(CURDIR)/Brewfile"

link:
	@./scripts/link.sh

mas:
	@./scripts/mas.sh

macos:
	@./scripts/macos.sh
