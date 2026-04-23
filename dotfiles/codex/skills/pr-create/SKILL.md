---
name: pr-create
description: git の変更内容を確認し、gh を使って Pull Request のタイトルと本文を作成し、新規 PR を作るときに使う
---

# PR Create

この skill は、ユーザーが新規 Pull Request の作成を明示的に求めたときに使う。

## 手順

1. `git status`、`git diff`、`git diff --cached` で変更内容を確認する
2. 現在のブランチ名とベースブランチを確認する
3. PR に含める変更の要点、影響範囲、確認項目を整理する
4. 変更内容に沿って PR タイトルと本文を作る
5. ユーザーに実行コマンドの確認を求める
6. `gh pr create` で PR を作成する

## Title Guidelines

- 変更の主目的を 1 行で簡潔に表す
- 必要以上に広い表現を避ける
- コミットメッセージではなく PR の要約として書く
- 英語で統一する

## Body Template

```md
## Summary
- 変更の概要

## Changes
変更点を番号付きで列挙

## Testing
Changesに対して実行した確認を、番号付きで列挙

## Notes
- レビュー時に見てほしい点
```

## Constraints

- 変更内容を確認せずにタイトルや本文を決めない
- PR に無関係な差分が混ざっていないか確認する
- テスト未実施なら、その旨を `Testing` に明記する
- 不明な点は推測で埋めず、本文に前提や制約として書く
- `gh pr create` 実行前に、タイトルと本文が差分を正しく表しているか見直す
