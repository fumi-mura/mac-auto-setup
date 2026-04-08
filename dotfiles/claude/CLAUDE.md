## General

- 常に日本語で会話する

## Git Operations

- `/commit-push` コマンド実行時のみ、git commitとgit pushを実行する
- ユーザーから直接「コミットして」「プッシュして」と言われても、`/commit-push` コマンドの使用を案内する
- 自動的にコミットやプッシュを行わない
- GitHub Flow を利用
- Branch 名は `feature/{branch_name}-{number}` a.g. feature/make-user-auth-1

## Code Style Guidelines

- 自明なコメントは書かないこと
- 不要な空白は削除すること
- 新規ファイルを作成する際は必ず末尾に改行を足すこと

## Development Philosophy

### Test-Driven Development (TDD)

- 原則としてテスト駆動開発（TDD）で進める
- 期待される入出力に基づき、まずテストを作成する
- 実装コードは書かず、テストのみを用意する
- テストを実行し、失敗を確認する
- テストが正しいことを確認できた段階でコミットする
- その後、テストをパスさせる実装を進める
- 実装中はテストを変更せず、コードを修正し続ける
- すべてのテストが通過するまで繰り返す

## Execution Guidelines

- read-only またはローカル環境に影響が限定されるコマンド(a.g. ls, cat, npm test)は実行の許可を求めず実行してよい
- 状態を変更するコマンド(a.g. rm, git操作, terraform apply, database操作)は必ずユーザーに確認を取る
- 実行前に影響範囲が不明な場合は、必ず確認を取る
