# デプロイメントガイド - AI Project Builder

## 🚀 本番環境へのデプロイ手順

### 自動デプロイ（推奨）

このプロジェクトはGitHub + Vercelの自動デプロイが設定されています。

```bash
# 変更をコミット
git add .
git commit -m "Your changes"

# mainブランチにプッシュ（自動的にVercelにデプロイされます）
git push origin main
```

**重要**: カスタムドメイン（ai-project-builder.ideandtity.com）への反映は自動的に行われます。

### 手動デプロイ（緊急時のみ）

```bash
# Vercel CLIでプロダクションデプロイ
vercel --prod
```

## 🔧 初期セットアップ（新規環境の場合）

### 1. Vercelプロジェクトの接続

```bash
# Vercel CLIをインストール
npm install -g vercel

# Vercelにログイン
vercel login

# プロジェクトをリンク（既存のプロジェクトを選択）
vercel link
```

### 2. GitHub Secretsの設定

GitHubリポジトリの Settings > Secrets and variables > Actions で以下を設定：

- `VERCEL_TOKEN`: Vercelの[アカウント設定](https://vercel.com/account/tokens)から取得
- `VERCEL_ORG_ID`: `.vercel/project.json`の`orgId`値
- `VERCEL_PROJECT_ID`: `.vercel/project.json`の`projectId`値

現在の値：
```json
{
  "projectId": "prj_Ya6uFepPsIjCP1k4RFqUqqleFAPU",
  "orgId": "team_4lQarotqYZWCiTQskq7bO1ys"
}
```

## 📝 デプロイ前チェックリスト

1. [ ] コードの動作確認完了
2. [ ] 不要なデバッグコード削除
3. [ ] `git status`で変更内容確認
4. [ ] 意味のあるコミットメッセージ

## 🌐 本番環境URL

- **カスタムドメイン**: https://ai-project-builder.ideandtity.com/
- **Vercel URL**: https://ai-project-builder-mu.vercel.app/

## ⚠️ トラブルシューティング

### カスタムドメインに古いバージョンが表示される場合

1. Vercelダッシュボードで最新デプロイを確認
2. 必要に応じて手動でエイリアスを更新：
   ```bash
   vercel alias ls  # 現在のエイリアスを確認
   vercel promote [deployment-url]  # 最新版をプロモート
   ```

### デプロイが失敗する場合

1. GitHub Actionsのログを確認
2. Vercel CLIで直接デプロイを試行
3. `.vercel/`フォルダが存在することを確認

## 📊 デプロイ履歴

Vercelダッシュボード > Deployments タブで全履歴を確認可能

## 🔄 ロールバック手順

問題が発生した場合：

1. Vercelダッシュボードで前のデプロイメントを選択
2. "Promote to Production"をクリック
3. または`vercel rollback`コマンドを使用