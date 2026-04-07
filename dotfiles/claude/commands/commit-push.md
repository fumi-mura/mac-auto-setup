---
name: commit-push
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git push:*), Bash(git log:*), Bash(git diff:*)
description: commitして、pushする
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Format

`<type>[optional scope]: <description>`

## Your task

上記の変更内容に基づいて、以下を順番に実行する。

1. 変更ファイルをステージングする（`.env` や認証情報ファイルは除外する）
2. Conventional Commits formatを元にコミットする
3. `git push` でリモートにプッシュする
4. mainブランチで作業している場合は、直接pushしてよいか確認する

ツールの複数呼び出しが可能な場合、すべてを1つのメッセージで実行すること。他のツールは使わず、余分なテキストやメッセージは送らないこと。
