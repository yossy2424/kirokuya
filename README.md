## usersテーブル

| name          | string  | option                    |
| ------------- | ------- | ------------------------- |
| nickname      | string  | null: false               |
| encrypted     | string  | null: false               |
| height        | float   | null: false               |
| email         | string  | null: false, unique: true |
| sex_id        | integer | null: false               |
| weight        | float   | null: false               |
| target_weight | float   | null: false               |

has_many :records
has_many :comments

## recordsテーブル

| name                | string    | option                         |
| ------------------- | --------- | ------------------------------ |
| weight              | integer   | null: false                    |
| body fat percentage | integer   | null: false                    |
| month_id            | integer   | null: false                    |
| date_id             | integer   | null: false                    |
| user_id             | reference | null: false, foreign_key: true |

belong_to :user
has_one :comments

## commentsテーブル

| name      | string    | option                         |
| --------- | --------- | ------------------------------ |
| comment   | text      |                                |
| user_id   | reference | null :false ,foreign_key :true |
| record_id | reference | null :false ,foreign_key :true |