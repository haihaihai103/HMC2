class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :belong
  belongs_to :prefecture


  has_many :patients
  
  with_options presence: true do
    validates :belong_id
    validates :birth_date
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
      
      with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/} do
        validates :first_name
        validates :last_name
      end
      
        with_options format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/} do
          validates :last_name_kana 
          validates :first_name_kana
        end
  end
end
