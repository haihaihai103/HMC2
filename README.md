# テーブル設計
（必要に応じて、変更すること）
## usersテーブル
 has_many :patients

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| first_name | string | null: false |
| last_name| string | null: false ,unique: true |
| first_name_kana | string | null: false |
| last_name_kana  | string | null: false |
| belong_id | string | null: false |
| email    | string | null: false |
| birth_date | integer | null: false |
| password | integer | null: false |

## patientsテーブル
 belongs_to :user
 has_one :status
 has_one :datail
 
| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| kana | string | |
| name | string | null: false |
| gender | string | null: false |
| nationality | string |  |
| postcode | integer |    |
| prefecture | string |   |
| city      | string |    |
| town      | string |    |
| phone1    | integer |   |
| phone2    | integer |   |
| email     | string |    |
| main_health_center_id | string | null:false |
| sub_health_center1_id | string | |
| sub_health_center2_id | string | |
| sub_health_center3_id | string | |
| section | string | |
| company | string | |
| phone3 | integer | |
| kana2 | string | |
| name2 | string | |
| phone4 | integer | |
| phone5 | integer | |
| number | integer | |
| ID | integer | |
| free | text | |
| user_id | references | foreign_key: true |

## statusesテーブル
belongs_to :patient

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| announcement_date | integer | |
| positive_date | integer | null:false |
| collection_date | integer | null:false |
| onset | integer | null:false |
| onset_date | integer | null:false |
| covid_type_id | string | |
| destination | string | null:false |
| hospital | string | |
| startdate | integer | null:false |
| finaldate | integer | |
| condition | string | null:false |

## detailsテーブル 
belongs_to :patient

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| health | text | null: false |

