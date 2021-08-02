class Belong < ActiveHash::Base
  self.data = [
    { id: 1, name: '愛知県' },
    { id: 2, name: '名古屋市' },
    { id: 3, name: '千種保健センター' },
    { id: 4, name: '東保健センター' },
    { id: 5, name: '北保健センター' },
    { id: 6, name: '西保健センター' },
    { id: 7, name: '中村保健センター' },
    { id: 8, name: '中保健センター' },
    { id: 9, name: '昭和保健センター' },
    { id: 10, name: '瑞穂保健センター' },
    { id: 11, name: '熱田保健センター' },
    { id: 12, name: '中川保健センター' },
    { id: 13, name: '港保健センター' },
    { id: 14, name: '南保健センター' },
    { id: 15, name: '守山保健センター' },
    { id: 16, name: '緑保健センター' },
    { id: 17, name: '名東保健センター' },
    { id: 18, name: '天白保健センター' },
    { id: 19, name: '豊橋市保健所' },
    { id: 20, name: '一宮市保健所' },
    { id: 21, name: '豊田市保健所' },
    { id: 22, name: '岡崎保健所' },
    { id: 23, name: '瀬戸保健所' },
    { id: 24, name: '春日井保健所' },
    { id: 25, name: '江南保健所' },
    { id: 26, name: '清須保健所' },
    { id: 27, name: '津島保健所' },
    { id: 28, name: '半田保健所' },
    { id: 29, name: '知多保健所' },
    { id: 30, name: '衣浦東部保健所' },
    { id: 31, name: '西尾保健所' },
    { id: 32, name: '新城保健所' },
    { id: 33, name: '豊川保健所' },
  ]

  include ActiveHash::Associations
  has_many :devise
  has_many :patients
end