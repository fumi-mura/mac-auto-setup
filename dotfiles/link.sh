#!/bin/zsh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo SCRIPT_DIR

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.gitignore_global" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done

# Git
mkdir -p "$HOME/.config/git"
ln -fnsv "$SCRIPT_DIR/.gitignore_global" "$HOME/.config/git/ignore"

# Karabiner
mkdir -p "$HOME/.config/karabiner"
ln -fnsv "$SCRIPT_DIR/karabiner.json" "$HOME/.config/karabiner/karabiner.json"
