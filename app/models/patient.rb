class Patient < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :belong
  belongs_to :prefecture  
  belongs_to :age

  belongs_to :user
  
  #携帯番号の入力は任意だが、正規表現をつけたい
  #VALID_PHONE_NUMBER = /\A\d{10,11}\z/
  #validates :phone01, format: { with: VALID_PHONE_NUMBER}
  #validates :phone02
  #validates :phone03, format: { with: VALID_PHONE_NUMBER}
  #validates :phone04, format: { with: VALID_PHONE_NUMBER}

  with_options presence: true do
    validates :kana01
    validates :gender
    validates :belong_id, numericality: { other_than: 1 }
  end
end
