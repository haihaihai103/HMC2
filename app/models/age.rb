class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '不明' },
    { id: 2, name: '10歳代未満' },
    { id: 3, name: '10歳代' },
    { id: 4, name: '20歳代' },
    { id: 5, name: '30歳代' },
    { id: 6, name: '40歳代' },
    { id: 7, name: '50歳代' },
    { id: 8, name: '60歳代' },
    { id: 9, name: '70歳代' },
    { id: 10, name: '80歳代' },
    { id: 11, name: '90歳代' },
    { id: 12, name: '100歳代' },
  ]

  include ActiveHash::Associations
  has_many :patients
  
  end