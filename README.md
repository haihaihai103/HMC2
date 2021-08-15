# アプリ名  
_HMC2_
  _(Health Management Covid2)_

## 概要
・ユーザーの新規登録、ログイン機能  
・感染者数のグラフ表示  
・患者情報新規登録  
・（登録した）全患者情報のエクセル出力  
・患者情報編集機能  
・患者情報検索機能  

## 本番環境
・URL：http://52.196.174.211/  
・テストアカウント  
    Email:aaa@aaa  
    pass:11111a  

## 制作背景
  自分がこの仕事に携わっており、現在のシステムより簡単に患者情報を管理できるようにしたいと感じていた。このシステムを担当している同僚から話を聞き、使いづらい部分を反映した。さらに、患者の情報分析や資料作りをする中でエクセルで管理や作業することがあり、システムからエクセルが出力できれば作業がしやすいと考えた。  
  また、自身の都道府県のHPはコロナ情報がわかりずらく、トップページでグラフなどを表示し見やすくならないかと考えた。  

## DEMO  
_トップページ_  
<img width="1435" alt="トップページ" src="https://user-images.githubusercontent.com/80326285/129468146-776a86f5-bf1f-43b5-b277-973efd71de62.png">    
_患者新規登録_  
<img width="718" alt="新規患者登録" src="https://user-images.githubusercontent.com/80326285/129468157-ba8f7287-71b8-4c96-be70-cbef0db7665e.png">  
_患者詳細情報_  
<img width="720" alt="患者詳細画面" src="https://user-images.githubusercontent.com/80326285/129468155-b3a5bb8b-6580-46bd-997a-16ab8b55adc0.png">  
_患者情報一覧_  
　<img width="717" alt="患者一覧" src="https://user-images.githubusercontent.com/80326285/129468153-56c64bcc-93cd-4e15-a18a-b3ba31536171.png">  
_患者情報一覧エクセル出力_  
<img width="1436" alt="Excel出力画面" src="https://user-images.githubusercontent.com/80326285/129468149-495fe9b1-0d02-44cc-9e69-a2db82b5e990.png">  

## 工夫したポイント  
  常にユーザーがこのアプリを使うことを考えて、患者情報の項目の数の適正化に努めた。  
  アプリの趣旨を鑑みてビューを出来るだけ簡素なものとした。

## 使用技術（開発環境）  
  バックエンド  
  Ruby,Ruby on Rails  
  フロントエンド  
  Javascript  
  データベース  
  MySOL  
  ソース管理  
  GitHub  
  テスト   
  RSpec  
  エディタ  
  VSCode  

## 課題や今後実装したい機能
・入院患者や宿泊療養の管理  
    入院先を登録できるように改良し、病床数のリアルタイムの把握。  
・エクセル出力  
    検索した患者の情報のみ出力できるように改良。  
・エクセルを用いた入力  
    エクセルに入力してある患者情報でスムーズに患者新規登録できないか。  
・F&Q  
    使い方を動画で説明できないか。  
・ユーザー管理  
    個人情報を扱う観点で、通常の新規登録及びログイン機能だけではセキュリティーが心許ない。  
    SMS認証や管理者の許可方式などを導入検討。  

## db設計  
### usersテーブル
 has_many :patients

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| first_name  | string | null: false |
| last_name   | string | null: false |
| first_name_kana | string | null: false |
| last_name_kana  | string | null: false |
| belong_id  | string | null: false |
| email      | string | null: false, unique:true |
| birth_date | integer | null: false |
| password   | string | null: false |

### usersテーブル
 belongs_to :user

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| kana01  | string | null: false |
| name01  | string | |
| gender  | string | null: false |
| nationality | string |  |
| postcode | integer |  |
| prefecture_id | string |  |
| city | string |  |
| town | string |  |
| phone01 | string |  |
| phone02 | string |  |
| email | string |  |
| belong_id | string | null: false|
| company | string |  |
| location | string |  |
| phone03 | string |  |
| kana02  | string |  |
| name02  | string |  |
| phone04 | string |  |
| number  | string |  |
| free | text |  |
| user | references | foreign_key:true |


