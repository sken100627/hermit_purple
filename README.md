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
[![Image from Gyazo](https://i.gyazo.com/355ac3ed2b32828d3459c524ec5bc63c.png)](https://gyazo.com/355ac3ed2b32828d3459c524ec5bc63c)  


### 必要な情報を入力し、グループを作成
[![Image from Gyazo](https://i.gyazo.com/e61597b4d579303fe4ffcc14d34d2a79.gif)](https://gyazo.com/e61597b4d579303fe4ffcc14d34d2a79)  


## 探し物登録

### グループ名またはグループ画像をクリックし、探し物一覧ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/bd486774762fb4f454ca357feffe7b62.gif)](https://gyazo.com/bd486774762fb4f454ca357feffe7b62)  


### 「＋」ボタンから探し物登録ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/e7e5b74b4789b577286c0b98c5fd34e0.gif)](https://gyazo.com/e7e5b74b4789b577286c0b98c5fd34e0)  


### 必要な情報を入力し、探し物を作成
[![Image from Gyazo](https://i.gyazo.com/7972ebd7d2a7d0c3fb870869c3569dc2.gif)](https://gyazo.com/7972ebd7d2a7d0c3fb870869c3569dc2)  


## 探し物詳細ページ

### 「show」ボタンから探し物詳細ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/128b7124f1eef874149e4edd8b9a503b.gif)](https://gyazo.com/128b7124f1eef874149e4edd8b9a503b)  


## 使用中の表示・非表示

### 使用開始ボタンを押すと使用中表示が出る
[![Image from Gyazo](https://i.gyazo.com/ef18727874facf294b75c9979395328e.gif)](https://gyazo.com/ef18727874facf294b75c9979395328e)  


### 使用終了ボタンを押すと使用中表示が消える
[![Image from Gyazo](https://i.gyazo.com/74e548a5387f41138b204172f7c4db6c.gif)](https://gyazo.com/74e548a5387f41138b204172f7c4db6c)  


## 下限数量を下回ると「発注が必要です」メッセージが表示される

### 使用した数量分数量を変更
[![Image from Gyazo](https://i.gyazo.com/a1babb1c8e5ca5a306c847f50bf697fe.gif)](https://gyazo.com/a1babb1c8e5ca5a306c847f50bf697fe)  


### 下限数量を下回るとメッセージ表示
[![Image from Gyazo](https://i.gyazo.com/0e6887a5b17207057ba000107dfa50ab.gif)](https://gyazo.com/0e6887a5b17207057ba000107dfa50ab)  


## グループ招待

### グループ詳細ページよりユーザーを招待
[![Image from Gyazo](https://i.gyazo.com/ff78f116c3540f78b5ba170086caaabe.gif)](https://gyazo.com/ff78f116c3540f78b5ba170086caaabe)  


### 招待されたユーザーの通知一覧ページからグループに参加
[![Image from Gyazo](https://i.gyazo.com/dbf394bc85495d923d29b9d46c667163.gif)](https://gyazo.com/dbf394bc85495d923d29b9d46c667163)

## アプリの使い方

### フッター「？」ボタンより使い方ページに遷移
[![Image from Gyazo](https://i.gyazo.com/6aa2fcbcaaf9691cd1850a43b4ac28f1.gif)](https://gyazo.com/6aa2fcbcaaf9691cd1850a43b4ac28f1)

# 実装予定の機能
下限数量を下回った時に、グループ作成者（管理者）に通知を飛ばす。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/4321c8dd392fa2bc2fbdaa92eba29591.png)](https://gyazo.com/4321c8dd392fa2bc2fbdaa92eba29591)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/e1cfc79579ece93194eaacfa5c791603.png)](https://gyazo.com/e1cfc79579ece93194eaacfa5c791603)

# 開発環境
・フロントエンド  
・バックエンド  
・テスト  
・テキストエディタ  
・Ruby  
・Ruby on rails  
・JavaScript  
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