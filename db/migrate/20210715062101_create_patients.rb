class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :kana01
      t.string :name01, null:false
      t.string :gender, null:false
      t.integer :age
      t.string :nationality
      t.integer :postcode
      t.string :prefecture_id
      t.string :city
      t.string :town
      t.integer :phone01
      t.integer :phone02
      t.string :email
      t.string :belong_id, null:false
      t.string :belong01_id
      t.string :belong02_id
      t.string :belong03_id
      t.string :company
      t.string :location
      t.integer :phone03
      t.string :kana02
      t.string :name02
      t.string :relationship
      t.integer :phone04
      t.integer :phone05
      t.integer :number
      t.text :free
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
