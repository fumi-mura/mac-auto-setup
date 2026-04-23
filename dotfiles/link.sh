#!/bin/zsh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo SCRIPT_DIR

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.gitignore_global" ]] && continue
    # Comment in if necessary.
    # [[ "$dotfile" == "${SCRIPT_DIR}/.gitconfig" ]] && continue
    # [[ "$dotfile" == "${SCRIPT_DIR}/.zshrc" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done

# Git
mkdir -p "$HOME/.config/git"
ln -fnsv "$SCRIPT_DIR/.gitignore_global" "$HOME/.config/git/ignore"

# Karabiner
mkdir -p "$HOME/.config/karabiner"
ln -fnsv "$SCRIPT_DIR/karabiner.json" "$HOME/.config/karabiner/karabiner.json"

# Claude
mkdir -p "$HOME/.claude"
mkdir -p "$HOME/.claude/skills"
ln -fnsv "$SCRIPT_DIR/claude/skills/commit-push" "$HOME/.claude/skills/commit-push"
ln -fnsv "$SCRIPT_DIR/claude/hooks" "$HOME/.claude/hooks"
ln -fnsv "$SCRIPT_DIR/shared/AGENTS.md" "$HOME/.claude/CLAUDE.md"
ln -fnsv "$SCRIPT_DIR/claude/settings.json" "$HOME/.claude/settings.json"
ln -fnsv "$SCRIPT_DIR/claude/statusline.js" "$HOME/.claude/statusline.js"

# Codex
mkdir -p "$HOME/.codex"
mkdir -p "$HOME/.codex/skills"
ln -fnsv "$SCRIPT_DIR/shared/AGENTS.md" "$HOME/.codex/AGENTS.md"
ln -fnsv "$SCRIPT_DIR/codex/config.toml" "$HOME/.codex/config.toml"
ln -fnsv "$SCRIPT_DIR/codex/skills/commit-push" "$HOME/.codex/skills/commit-push"
ln -fnsv "$SCRIPT_DIR/codex/skills/pr-create" "$HOME/.codex/skills/pr-create"
ln -fnsv "$SCRIPT_DIR/codex/skills/pr-update" "$HOME/.codex/skills/pr-update"

# Gemini
mkdir -p "$HOME/.gemini"
ln -fnsv "$SCRIPT_DIR/shared/AGENTS.md" "$HOME/.gemini/GEMINI.md"
ln -fnsv "$SCRIPT_DIR/gemini/settings.json" "$HOME/.gemini/settings.json"
