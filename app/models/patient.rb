class Patient < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :belong
  belongs_to :prefecture  
  
  belongs_to :user
  
  with_options presence: true do
    validates :kana01
    validates :gender
  end
  
  validates :belong_id, numericality: { other_than: 1 } do
  end
end
