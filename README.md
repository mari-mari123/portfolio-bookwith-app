# Bookwith📚
アクセスしていただき、ありがとうございます。<br>
「bookwith」は、本専用の「欲しい物リストを作成するアプリ」です。<br>
ゲストログイン機能もありますので、お気軽に御覧ください☺️


### URL
https://bookwith-react-frontend.herokuapp.com/<br>
(2022/11/28 herokuの無料版が無くなることから本番環境は変更する予定です)
## 作成経緯
書店に行った際に、「この本面白そうだな、だけど買うのは迷うな...🤔」といった経験はありませんか？<br>
その本を買わなかった理由は様々なケースが考えられますが、せっかく気になった本を忘れてしまうというのはもったいないと思いました。<br>
そこでスマホのカメラから本のバーコードを読み込むだけで本リストを作ることができるアプリを開発しました。<br>
## 本アプリの特徴
### ER図
<img width="841" alt="スクリーンショット 2022-09-22 18 26 22" src="https://user-images.githubusercontent.com/101347445/194065055-71388ba2-f830-4a66-9a8d-fb9c0514716c.png">

### インフラ構成図
最後に書く予定

## 使用技術(非機能一覧)※詳細後述
#### フロントエンド
* React
* Jest（テスト）
* ESlint
* pretter
#### バックエンド
* Ruby on Rails (apiモード)
* Rspec (テスト)
* Rubocop (コード解析ツール)
* MySQL
#### インフラ
* Docker, docker-compose
* heroku
* AWS S3
#### その他

## 実装機能
#### 通常ログイン時
* トップ（HOME画面）の閲覧
* マイページ
  * ログイン・ログアウト
  * 退会
  * プロフ編集
* 本追加（手動（入力・検索）・カメラ）
* 本詳細閲覧
* 本検索
#### ゲストログイン時
* トップ（HOME画面）の閲覧
* ゲストログイン・ログアウト
  * マイページ閲覧
* 本追加（手動（入力・検索）・カメラ）
* 本詳細閲覧
* 本検索
#### ログアウト時
* トップ（HOME画面）の閲覧
* 新規会員登録

## 使用技術詳細

1, タイトルと概要、URL
2, 使用技術
3, AWS(インフラ)構成図
4, 機能、非機能一覧
