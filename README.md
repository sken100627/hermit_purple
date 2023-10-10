# アプリケーション名
Hermit Purple

# アプリケーション概要
家庭や職場の在庫の場所や数を管理することができる。

# URL
https://hermit-purple.onrender.com

# テスト用アカウント
・Basic認証パスワード：100627  
・Basic認証ID：sken10  
・メールアドレス：123@gmail.com  
・パスワード：s100627

# 利用方法

## グループ作成
1.グループ一覧ページからグループの新規作成を行う。  
2.「Create Group」ボタンから、グループ名、グループ紹介、グループ画像入力して作成。

## グループ招待
1.グループ一覧ページから該当のグループを選択し、「Show」ボタンからグループ詳細ページへ遷移する。  
2.招待したいユーザーを選択し、「招待する」ボタンで招待を送る。（グループ作成者のみ可）

## グループ参加
1.フッター右上のベルマークボタンから通知一覧へ遷移する。  
2.「Join」ボタンからグループに参加する。（招待されていれば通知が表示される）

## グループ退出
1.グループ一覧ページから該当のグループを選択し、「Exit」ボタンからグループを退出する。

## 探し物登録
1.グループ一覧ページから該当のグループ名または、グループ画像をクリックして探し物一覧ページへ遷移する。  
2.探し物一覧ページの「＋」ボタンから探し物登録ページへ遷移する。  
3.探し物の名前、探し物の画像またはPDF、数量を必須項目として入力する。  
4.下限数量、保管場所、保管場所画像、補足情報を任意項目として入力する。  
5.入力後、「registration」ボタンから探し物を登録する。

## 数量管理
1.探し物一覧ページから該当の探し物を選択肢、「Show」ボタンから探し物詳細ページへ遷移する。  
2.消耗品であれば、数量フォームに数量を入力し、変更ボタンを押す。  
3.下限数量を設定した場合は、下限数量を下回った時に詳細ページ上部に「発注が必要です」というメッセージが表示される。

# アプリケーションを作成した背景
前職の同期や家族にヒアリングをし、「職場や家の在庫管理ができていない」という課題を抱えていることが判明した。課題を分析した結果、「在庫の管理が属人化しており、職場や家族のみんなが把握しきれていない」ということが問題であると仮説を立てた。このような状況は、多くの職場や家庭で発生していると考え、在庫の管理を共有できるアプリケーションを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/18y9kkBOb-ywruQkhjU3PtNsMswPZtWfoF9fqaG65f2Y/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

## グループ作成

### 「Create Group」ボタンからグループ作成画面へ遷移
[![Image from Gyazo](https://i.gyazo.com/752cf5af8770781f0dd1dcc425bcd57a.png)](https://gyazo.com/752cf5af8770781f0dd1dcc425bcd57a)  


### 必要な情報を入力し、グループを作成
[![Image from Gyazo](https://i.gyazo.com/344bbae48836adabab75233b81c7b99b.gif)](https://gyazo.com/344bbae48836adabab75233b81c7b99b)  


## 探し物登録

### グループ名またはグループ画像をクリックし、探し物一覧ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/0090a84b3cd35ac2319c3f4e4fb6c4d2.gif)](https://gyazo.com/0090a84b3cd35ac2319c3f4e4fb6c4d2)  


### 「＋」ボタンから探し物登録ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/378753cf2b8ace2dce8c1c0d4d93a1d6.gif)](https://gyazo.com/378753cf2b8ace2dce8c1c0d4d93a1d6)  


### 必要な情報を入力し、探し物を作成
[![Image from Gyazo](https://i.gyazo.com/33d9c167d0806be96681d06386b328f5.gif)](https://gyazo.com/33d9c167d0806be96681d06386b328f5)  


## 探し物詳細ページ

### 「show」ボタンから探し物詳細ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/d31d12a6cbf8b2f62d17b23c828c9cca.gif)](https://gyazo.com/d31d12a6cbf8b2f62d17b23c828c9cca)  


## 使用中の表示・非表示

### 使用開始ボタンを押すと使用中表示が出る
[![Image from Gyazo](https://i.gyazo.com/4ed46f9f107a38eb662de6f9288fa1b3.gif)](https://gyazo.com/4ed46f9f107a38eb662de6f9288fa1b3)  


### 使用終了ボタンを押すと使用中表示が消える
[![Image from Gyazo](https://i.gyazo.com/1c15bd25c2cacd2039a10af63d4d9aff.gif)](https://gyazo.com/1c15bd25c2cacd2039a10af63d4d9aff)  


## 下限数量を下回ると「発注が必要です」メッセージが表示される

### 使用した数量分数量を変更
[![Image from Gyazo](https://i.gyazo.com/97e0270ac35f28e983f3bccf9a9ae672.gif)](https://gyazo.com/97e0270ac35f28e983f3bccf9a9ae672)  


### 下限数量を下回るとメッセージ表示
[![Image from Gyazo](https://i.gyazo.com/6e6d2d37a33e8182dbd5152da1a68a2f.gif)](https://gyazo.com/6e6d2d37a33e8182dbd5152da1a68a2f)  


## グループ招待

### グループ詳細ページよりユーザーを招待
[![Image from Gyazo](https://i.gyazo.com/ba2651cacbf54e6e9dafdf865cd66a2d.gif)](https://gyazo.com/ba2651cacbf54e6e9dafdf865cd66a2d)  


### 招待されたユーザーの通知一覧ページからグループに参加
[![Image from Gyazo](https://i.gyazo.com/aeecc0624db3453c1feefe00de09cd39.gif)](https://gyazo.com/aeecc0624db3453c1feefe00de09cd39)


# 実装予定の機能
下限数量を下回った時に、グループ作成者（管理者）に通知を飛ばす。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/73eed3f3b8fd4035677aac628f7f2a7b.png)](https://gyazo.com/73eed3f3b8fd4035677aac628f7f2a7b)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/e1cfc79579ece93194eaacfa5c791603.png)](https://gyazo.com/e1cfc79579ece93194eaacfa5c791603)

# 開発環境
・フロントエンド  
・バックエンド  
・テスト  
・テキストエディタ  
・Ruby  
・Ruby on rails  
・HTML  
・CSS

# ローカルでの動作確認方法
以下のコマンドを順に実行  
% git clone https://github.com/sken100627/hermit_purple.git  
% cd xxxxxxxx  
% bundle install  
% rails db:create

# 工夫したポイント
家族や職場などの様々な場面で使用できるように、グループ機能を実装した。セキュリティ面を考慮し、グループへの参加は招待されたもののみが可能とした。また、数量の下限設定を搭載し、発注頻度や在庫管理ができるようにした。さらに、PDFファイルを保存できるようにしたことで、家具の組み立て図や家電の取扱説明書などを保存できるようにした。

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :items
- has_many :group_users
- has_many :group, through: :group_users

## items テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| storage     | string     |                                |
| quantity    | integer    | null: false                    |
| explanation | text       |                                |
| lower       | integer    |                                |
| pdf         | string     |                                |
| taking      | boolean    | default: false, null: false    |
| user        | references | null: false, foreign_key: true |
| group       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group

## group_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group

## groups テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| group_name   | string     | null: false                    |
| introduction | text       | null: false                    |
| owner_id     | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- has_many :items
- has_many :group_users
- has_many :users, through: :group_users
- belongs_to :user
- has_many :notifications

## notifications テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| visitor_id | integer    | null: false                    |
| visited_id | integer    | null: false                    |
| group      | references | null: false, foreign_key: true |
| action     | string     | default: '', null: false       |
| checked    | boolean    | default: false, null: false    |

### Association

- belongs_to :group
- belongs_to :visitor
- belongs_to :visited