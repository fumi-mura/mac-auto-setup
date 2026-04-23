---
name: commit-push
description: 変更内容を確認し、関連ファイルのみを選択的にステージングして、Conventional Commits で commit と push を行うときに使う
---

# Commit Push

この skill は、ユーザーが commit と push を明示的に求めたときだけ使う。

## 手順

1. `git status` と `git diff` で変更内容を確認する
2. 今回の作業に関連するファイルのみを `git add [specific-files]` でステージングする
3. `git diff --cached` でステージング内容を確認する
4. `git log --oneline -5` で最近のコミットメッセージを確認する
5. Conventional Commits に従ったコミットメッセージを作る
6. `git commit` を実行する
7. `git push` を実行する

## Format

```text
{type}: {description}
{optional body}
```

## Type

- `feat`: 新機能
- `fix`: バグ修正
- `docs`: ドキュメントのみの変更
- `style`: コードの意味に影響しない変更
- `refactor`: バグ修正や機能追加を伴わないコード変更
- `perf`: パフォーマンス改善
- `test`: テストの追加・修正
- `chore`: ビルドプロセスやツールの変更
- `ci`: CI 関連の変更
- `build`: ビルドシステムや依存関係の変更

## Guidelines

- Conventional Commits 形式に従う
- `description` は英語で書く
- 1 行で簡潔に説明する
- 現在形または命令形で書く
- 複数の変更がある場合は主要な変更に焦点を当てる

## Constraints

- `git add .` と `git add -A` は使わない
- 関係ない変更をコミットに含めない
- 自動生成ファイルや一時ファイルが含まれていないか確認する
- ステージング前後で必ず差分を確認する
- `.env` や認証情報ファイルは含めない
- `main` ブランチで作業している場合は、直接 push してよいか事前に確認する
