# デプロイ手順

## 🚀 クイックスタート

### 1. GitHub Pagesでのデプロイ

1. このリポジトリをGitHubにプッシュ
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yshiiya/ai-project-builder.git
git push -u origin main
```

2. GitHub Actionsが自動的にデプロイ（初回は手動設定が必要）
   - リポジトリの Settings > Pages へ移動
   - Source: "GitHub Actions" を選択
   - Save

3. 数分後、以下のURLでアクセス可能
   - https://yshiiya.github.io/ai-project-builder/

### 2. 手動デプロイ（その他のプラットフォーム）

#### Netlify
```bash
# Netlify CLIを使用
npm install -g netlify-cli
netlify deploy --dir=. --prod
```

または、[Netlify Drop](https://app.netlify.com/drop)にフォルダをドラッグ＆ドロップ

#### Vercel
```bash
# Vercel CLIを使用
npm install -g vercel
vercel --prod
```

#### Firebase Hosting
```bash
# Firebase CLIを使用
npm install -g firebase-tools
firebase init hosting
firebase deploy
```

## 📁 必要なファイル

デプロイに必要なファイルは以下のみ：
- `index.html` - メインアプリケーション

オプション：
- `favicon-*.png` - ファビコン（追加した場合）
- `robots.txt` - SEO用（必要に応じて）

## 🔧 カスタムドメイン設定

### GitHub Pages
1. Settings > Pages > Custom domain
2. ドメイン名を入力（例: ai-builder.example.com）
3. DNSプロバイダでCNAMEレコードを追加
   ```
   CNAME: yshiiya.github.io
   ```

### Netlify/Vercel
各プラットフォームのダッシュボードから設定可能

## 🛡️ セキュリティ設定

### Content Security Policy (CSP)
必要に応じて、以下のメタタグを`index.html`に追加：
```html
<meta http-equiv="Content-Security-Policy" 
      content="default-src 'self' https://cdn.tailwindcss.com; 
               style-src 'self' 'unsafe-inline' https://cdn.tailwindcss.com; 
               script-src 'self' 'unsafe-inline' https://cdn.tailwindcss.com;">
```

## 📊 パフォーマンス最適化

### 1. CDNの活用
Tailwind CSSは既にCDN経由で配信されています

### 2. 圧縮
GitHub Pages、Netlify、Vercelは自動的にgzip圧縮を適用

### 3. キャッシュ設定
静的ホスティングサービスは適切なキャッシュヘッダーを自動設定

## 🔄 継続的デプロイ

GitHub Actionsワークフローが設定済み：
- `main`ブランチへのプッシュで自動デプロイ
- `.github/workflows/deploy.yml`で設定を確認・変更可能

## 📝 トラブルシューティング

### GitHub Pagesが表示されない
1. Settings > Pages で設定を確認
2. Actions タブでワークフローの実行状況を確認
3. 404エラーの場合、URLが正しいか確認

### ビルドエラー
1. GitHub Actions のログを確認
2. HTMLバリデーションエラーがないか確認

### パフォーマンスが遅い
1. ブラウザの開発者ツールでネットワークタブを確認
2. 大きなファイルがないか確認（通常はindex.htmlのみ）

## 📞 サポート

問題が発生した場合：
1. [Issues](https://github.com/yshiiya/ai-project-builder/issues)で報告
2. デプロイログを添付
3. エラーメッセージを共有