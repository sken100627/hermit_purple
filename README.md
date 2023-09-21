# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :items
- has_many :group, through: :group_users

## items テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| storage     | string     | null: false                    |
| quantity    | integer    | null: false                    |
| explanation | text       | null: false                    |
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
- has_many :users, through: :group_users