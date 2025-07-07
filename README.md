# メシタベ！

## ■サービス概要

**「メシタベ！」は、今日何を食べるか迷った時に、ワンクリックで料理を提案してくれる食事ルーレットアプリです。**

選択された料理の近隣店舗をGPS機能とGoogle Mapsで自動検索し、そのままお店に向かうことができます。シンプルなUI/UXで、迷いがちな食事選択を楽しく解決します。

🌐 **本番環境**: https://find-eat-f0bl.onrender.com/

## ■このサービスへの思い・作りたい理由

### 現代人の共通の悩み
- 「今日何食べよう？」という日常的な迷い
- 選択肢が多すぎて決められない現代の食事環境
- 新しい料理にチャレンジする機会の減少

### 解決への思い
毎日の食事選択に費やす**意思決定疲れ**を解消し、**偶然の出会い**を通じて食生活を豊かにしたい。シンプルな操作で、楽しく・素早く・新しい発見がある食事体験を提供したいという思いから開発しました。

## ■ユーザー層について

### メインターゲット
- **20〜40代の会社員・学生**
- 忙しい日常で食事選択に迷いがちな人
- 新しい料理や店舗開拓に興味がある人

### 利用シーン
- **ランチタイム**: 職場近くでの食事選択
- **ディナー**: 友人・恋人との外食先決定
- **一人飯**: 新しい料理への挑戦
- **旅行先**: 地元グルメの発見

### ユーザーペルソナ
- スマートフォンでの情報収集が日常的
- SNSでの情報共有に親しみがある
- 効率性と新しい体験の両方を求める

## ■サービスの利用イメージ

### 基本的な利用フロー
```
1. 「ご飯を決める」ボタンをタップ
   ↓
2. 3秒間のローディング演出
   ↓  
3. 料理が決定（32種類からランダム選択）
   ↓
4. 「近隣店舗を探す」で位置情報を取得
   ↓
5. Google Mapsで近隣店舗を表示
   ↓
6. お店に向かって実際に食事
```

### 追加機能の活用
- **ご飯変更**: 気に入らない場合は1秒で再抽選
- **SNS共有**: Twitter/Xで結果をシェア
- **リンク共有**: 友人に結果URLを送信

## ■ユーザーの獲得について

### 初期獲得戦略
1. **SNS拡散機能**: 結果シェア機能でバイラル効果を狙う
2. **インフルエンサーマーケティング**: グルメ系インフルエンサーとの連携
3. **ハッシュタグ戦略**: `#メシタベ` `#今日のごはん` での認知度向上

### 継続利用促進
1. **習慣化**: 昼食時間帯でのプッシュ通知（PWA機能活用）
2. **季節メニュー**: 季節限定料理の追加
3. **コミュニティ形成**: ユーザー投稿機能の実装

### 口コミ促進
- シンプルで使いやすいUIによる高い満足度
- 位置情報連携による実用性の高さ
- 「偶然の美味しい出会い」の体験価値

## ■サービスの差別化ポイント・推しポイント

### 1. **圧倒的なシンプルさ**
- ワンクリックで完結する操作性
- 迷わせない直感的なUI/UX
- 3秒のローディング演出で期待感を演出

### 2. **実用性の高い位置情報連携**
- GPS自動取得 + Google Maps連携
- 料理名での近隣店舗自動検索
- 位置情報取得失敗時のフォールバック機能

### 3. **モダンな技術スタック**
- **Rails 7.2** + **TailwindCSS** + **Turbo**
- レスポンシブデザインでマルチデバイス対応
- **PWA対応**でアプリライクな体験

### 4. **SNS時代に最適化**
- **OGP完全対応**でシェア時の見栄えが良い
- Twitter/X自動投稿機能
- ユニークURL生成で結果シェアが容易

### 5. **ユーザー体験の細かな配慮**
- ご飯変更時は1秒の高速ローディング
- エラーハンドリングの充実
- 料理画像と魅力的な説明文

## ■機能候補

### 実装済み機能 ✅
- [x] 料理ルーレット機能（32種類）
- [x] 位置情報取得 + Google Maps連携
- [x] SNS共有機能（Twitter/X）
- [x] OGP対応
- [x] レスポンシブデザイン
- [x] PWA対応
- [x] ローディングアニメーション
- [x] ユニークURL生成

### 今後の実装候補 🔄
#### Phase 1: ユーザー体験向上
- [ ] お気に入り機能
- [ ] 履歴機能（過去に選択した料理の記録）
- [ ] カテゴリフィルター（和食・洋食・中華等）
- [ ] アレルギー対応フィルター

#### Phase 2: ソーシャル機能
- [ ] ユーザー登録・ログイン機能
- [ ] 友達と一緒にルーレット機能
- [ ] 実食レビュー投稿機能
- [ ] ユーザー間での料理おすすめ機能

#### Phase 3: AI・データ活用
- [ ] 過去の選択データに基づくパーソナライズ
- [ ] 天気・時間に応じた料理提案
- [ ] 近隣店舗の混雑状況連携
- [ ] AIによる新料理提案

#### Phase 4: 収益化機能
- [ ] 店舗予約機能（ぐるなび・食べログAPI連携）
- [ ] 店舗広告表示機能
- [ ] プレミアム機能（料理数拡張等）

## ■機能の実装

### 技術構成

#### バックエンド
```ruby
# Rails 7.2.1
gem 'rails', '~> 7.2.1'
gem 'pg', '~> 1.1'                    # PostgreSQL
gem 'meta-tags'                       # OGP設定
gem 'puma', '~> 6.6'                  # Webサーバー
```

#### フロントエンド
```javascript
// Modern JavaScript Stack
import "@hotwired/turbo-rails"        // SPA的なページ遷移
import "./controllers"                // Stimulus
```

```css
/* TailwindCSS */
@tailwind base;
@tailwind components;
@tailwind utilities;
```

#### 開発・品質管理
```ruby
gem 'rubocop-rails-omakase'           # コード品質
gem 'brakeman'                        # セキュリティ監査
gem 'pry-rails'                       # デバッグ
```

### データベース設計

#### Foodsテーブル
```ruby
class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :results, dependent: :destroy
  
  # name: string (料理名)
  # comment: text (説明文)  
  # food_image: string (画像ファイル名)
end
```

#### Resultsテーブル
```ruby
class Result < ApplicationRecord
  belongs_to :food
  validates :slug, presence: true, uniqueness: true
  
  # food_id: integer
  # slug: string (12文字のユニークID)
end
```

### 主要機能の実装

#### 1. 料理ルーレット機能
```ruby
# app/controllers/foods_controller.rb
def create
  @result = Result.new(slug: SecureRandom.alphanumeric(12))
  @result.food_id = Food.order("RANDOM()").first.id
  @result.save
  redirect_to loading_path(@result.slug)
end
```

#### 2. 位置情報 + Google Maps連携
```javascript
// app/javascript/application.js
window.MapService = {
  searchNearbyRestaurants: function(foodName) {
    LocationService.getCurrentPosition()
      .then(position => {
        const query = encodeURIComponent(foodName);
        const coords = `${position.latitude},${position.longitude}`;
        const googleMapsUrl = `https://www.google.com/maps/search/${query}/@${coords},15z`;
        window.open(googleMapsUrl, '_blank');
      })
      .catch(error => {
        // フォールバック: 位置情報なしで検索
        const query = encodeURIComponent(foodName);
        window.open(`https://www.google.com/maps/search/${query}`, '_blank');
      });
  }
};
```

#### 3. OGP設定
```ruby
# app/controllers/foods_controller.rb
def prepare_meta_tags(food)
  set_meta_tags og: {
    site_name: "メシタベ！",
    title: "今日は#{food.name}にしようかな！",
    description: "食事ルーレットで今日のご飯を決めよう！",
    image: "#{request.base_url}#{asset_path("foods/#{food.food_image}.png")}"
  }
end
```

#### 4. ローディング時間の最適化
```javascript
// 初回: 3秒、ご飯変更: 1秒の差別化
const urlParams = new URLSearchParams(window.location.search);
const source = urlParams.get('source');
let loadingTime = source === 'change' ? 1000 : 3000;

setTimeout(() => {
  window.location.href = '<%= result_path(@result.slug) %>';
}, loadingTime);
```

### デプロイ・インフラ

#### 本番環境
- **Platform**: Render.com
- **Database**: PostgreSQL
- **Domain**: https://find-eat-f0bl.onrender.com/
- **SSL**: 自動対応

#### PWA設定
```json
// public/manifest.json
{
  "name": "メシタベ！",
  "short_name": "メシタベ",
  "start_url": "/",
  "display": "standalone",
  "theme_color": "#f97316"
}
```

---

## 開発者情報

**開発期間**: 2024年12月  
**開発言語**: Ruby, JavaScript, HTML, CSS  
**フレームワーク**: Ruby on Rails 7.2  

このREADMEは、RUNTEQ在学中のポートフォリオプロジェクトとして作成されました。