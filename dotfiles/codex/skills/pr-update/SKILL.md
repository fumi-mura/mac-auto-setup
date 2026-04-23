---
name: pr-update
description: 既存 Pull Request に対して、追加差分を確認し、gh を使って PR のタイトルや本文を更新するときに使う
---

# PR Update

この skill は、ユーザーが既存 Pull Request の更新を明示的に求めたときに使う。

## 手順

1. `git status`、`git diff`、`git diff --cached` で追加差分を確認する
2. 対象 PR 番号を確認し、番号が不明な場合は現在の `head branch` と `base branch` を確認する
3. `gh pr view <number>` または `gh pr view --head <head>` で対象 PR を確認する
4. 既存のタイトルと本文のうち、どこを更新すべきか整理する
5. 差分に応じて PR タイトルまたは本文の修正案を作る
6. ユーザーに実行コマンドの確認を求める
7. `gh pr edit <number>` または `gh pr edit --head <head>` で PR を更新する

## Update Guidelines

- 既存の説明を消しすぎず、今回増えた差分を反映する
- `Summary` は差分全体を表す内容に保つ
- `Changes` は追加差分を最終行に番号付きで反映する
- `Testing` は追加で実施した確認を番号付きで反映する
- レビュー観点や注意点が増えた場合は `Notes` に追記する

## Constraints

- 追加差分を確認してから PR 本文を更新する
- 対象 PR 番号または `head branch` を確認してから PR を更新する
- タイトル変更は、PR の主目的が変わる場合に限定する
- 既存 PR の意図を崩す変更を勝手に入れない
- テスト未実施なら、その旨を`Testing` に明記する
- `head branch` と `base branch` を確認してから PR を照合する
- `gh pr edit` 実行前に、更新内容が PR の現状を正しく表しているか見直す
