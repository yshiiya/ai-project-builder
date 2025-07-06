#!/bin/bash
# デプロイ後の自動チェックスクリプト

echo "🔍 デプロイ後チェックを開始..."

# 最新のデプロイメントURLを取得
LATEST_URL=$(vercel ls --json | jq -r '.[0].url')
echo "最新デプロイ: $LATEST_URL"

# カスタムドメインのエイリアスを確認
echo "📌 カスタムドメインを最新版に更新..."
vercel alias set "$LATEST_URL" ai-project-builder.ideandtity.com

# ページの存在確認
echo "🌐 ページアクセステスト..."
curl -s -o /dev/null -w "%{http_code}" https://ai-project-builder.ideandtity.com/ | grep -q "200" && echo "✅ / - OK" || echo "❌ / - エラー"
curl -s -o /dev/null -w "%{http_code}" https://ai-project-builder.ideandtity.com/landing | grep -q "200" && echo "✅ /landing - OK" || echo "❌ /landing - エラー"

echo "✨ チェック完了"