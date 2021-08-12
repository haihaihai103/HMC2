class Patient < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :belong
  belongs_to :prefecture  
  belongs_to :user
  
    #携帯番号の入力は任意だが、空欄か正規表現ハイフンなしの10桁か11桁
  VALID_EMAIL_REGEX = /\A\d{10}$|^\d{11}\z/
  with_options format: { with: VALID_EMAIL_REGEX, allow_blank: true } do
    validates :phone01 
    validates :phone02
    validates :phone03
    validates :phone04
  end

  with_options presence: true do
    validates :kana01
    validates :gender
    validates :belong_id
  end
end