# デプロイチェックリスト

## 🚀 デプロイ前の確認事項

### 1. 機能確認
- [ ] プロンプト生成が正常に動作する
- [ ] モバイル表示が正しく動作する
- [ ] プロンプト履歴機能が動作する
- [ ] コピー機能が動作する
- [ ] すべてのモーダルが正しく開閉する

### 2. ファイル確認
- [ ] `index.html` が最新版である
- [ ] 不要なバックアップファイルを削除（オプション）
- [ ] `.gitignore` が正しく設定されている

### 3. SEO/メタデータ
- [ ] ページタイトルが適切
- [ ] メタディスクリプションが設定済み
- [ ] OGP（Open Graph）タグが設定済み

## 📦 デプロイ方法

### GitHub Pages
```bash
# 1. GitHubにプッシュ
git add .
git commit -m "Ready for deployment"
git push origin main

# 2. GitHub Settings > Pages で設定
# - Source: Deploy from a branch
# - Branch: main / (root)
# - Save
```

### Netlify
1. https://app.netlify.com/start/deploy?repository=https://github.com/yshiiya/ai-project-builder
2. GitHubアカウントで認証
3. デプロイ設定はデフォルトのまま
4. "Deploy site" をクリック

### Vercel
1. https://vercel.com/new/clone?repository-url=https://github.com/yshiiya/ai-project-builder
2. GitHubアカウントで認証
3. デプロイ設定はデフォルトのまま
4. "Deploy" をクリック

### その他のホスティング
```bash
# FTP/SFTP でアップロード
# アップロードするファイル：
# - index.html
# - favicon-*.png (もしあれば)
```

## ✅ デプロイ後の確認

- [ ] サイトが正しく表示される
- [ ] すべての機能が動作する
- [ ] モバイルで確認
- [ ] 異なるブラウザで確認（Chrome, Safari, Firefox）

## 📊 パフォーマンス確認（オプション）

- [ ] [PageSpeed Insights](https://pagespeed.web.dev/) でスコアを確認
- [ ] [GTmetrix](https://gtmetrix.com/) でパフォーマンスを確認

## 🔄 更新時の手順

1. ローカルで変更を確認
2. `git push` でGitHubに反映
3. 自動デプロイの場合は数分待つ
4. 手動デプロイの場合は再度アップロード