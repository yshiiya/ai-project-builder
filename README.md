# AI Project 基本指示ビルダー

[![Deploy to GitHub Pages](https://github.com/yshiiya/ai-project-builder/actions/workflows/deploy.yml/badge.svg)](https://github.com/yshiiya/ai-project-builder/actions/workflows/deploy.yml)

Claude、ChatGPT、Gemini等、あらゆるAIツールで使える指示書を簡単に作成できるツールです。

🌐 **[ライブデモはこちら](https://yshiiya.github.io/ai-project-builder/)**

## 🌟 特徴

- **マルチAI対応**: Claude, ChatGPT, Gemini, Perplexity等で利用可能
- **専門家チーム機能**: 40以上の専門家テンプレートから選択
- **個人向け専門家**: 家計相談、教育、健康など日常生活をサポート
- **マルチエージェント**: 複数の専門家が協働する高度な設定
- **カスタマイズ性**: 出力形式、トーン、詳細度を細かく調整
- **インポート/エクスポート**: 設定の保存と共有が簡単

## 🚀 デプロイ

詳細は[デプロイメントガイド](./DEPLOYMENT-GUIDE.md)を参照してください。

```bash
# 自動デプロイ（推奨）
git push origin main

# 手動デプロイ
vercel --prod
```

## 🚀 使い方

1. プロジェクト名と対象AIツールを選択
2. プロジェクトタイプを選択（ビジネス、クリエイティブ、技術、研究、個人・日常）
3. 必要に応じて詳細設定をカスタマイズ
4. 生成された指示書をコピー
5. 各AIツールに貼り付けて使用

### AIツール別の使用方法

- **Claude**: プロジェクト設定の「Instructions」欄に貼り付け
- **ChatGPT**: Custom Instructionsの「How would you like ChatGPT to respond?」欄に貼り付け
- **Gemini**: 新しいチャットの最初のメッセージとして送信
- **その他**: システムプロンプトまたは初回メッセージとして使用

## 🛠️ 主な機能

### 基本設定
- プロジェクト名
- 対象AIツール選択
- プロジェクトタイプ
- 役割設定（シングル/マルチエージェント）

### 詳細設定
- 応答トーン（プロフェッショナル、フレンドリー、エキスパート、サポーティブ）
- 回答の詳細度（簡潔、バランス、詳細）
- 専門分野・得意領域
- 制約事項・注意点
- 出力形式のカスタマイズ

### マルチエージェント機能
- 専門家チームの構成
- 承認制/自律的協働モード
- チームリーダー設定
- 40以上の専門家テンプレート

## 💡 活用例

- **ビジネス**: 戦略立案、プロジェクト管理、データ分析
- **クリエイティブ**: コンテンツ制作、デザイン、ブランディング
- **技術**: プログラミング、システム設計、技術調査
- **研究**: 文献調査、データ分析、レポート作成
- **個人・日常**: 家計相談、教育相談、健康管理、ライフプランニング

## 🚀 デプロイ方法

### GitHub Pages

1. リポジトリの Settings > Pages に移動
2. Source を "Deploy from a branch" に設定
3. Branch を "main" / "(root)" に設定
4. Save をクリック

### Netlify

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/yshiiya/ai-project-builder)

### Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/yshiiya/ai-project-builder)

### その他のホスティング

`index.html`を任意のWebサーバーにアップロードするだけで動作します。

## 🛠️ ローカル開発

```bash
# リポジトリをクローン
git clone https://github.com/yshiiya/ai-project-builder.git
cd ai-project-builder

# ブラウザで開く
open index.html

# または、簡易サーバーを起動
python -m http.server 8000
# http://localhost:8000 にアクセス
```

## 📝 ライセンス

MIT License

## 🤝 貢献

バグ報告や機能提案は[Issues](https://github.com/yshiiya/ai-project-builder/issues)までお願いします。

---

Created with ❤️ for AI enthusiasts