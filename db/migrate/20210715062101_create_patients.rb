class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :kana01
      t.string :name01, null:false
      t.string :gender, null:false
      t.string :age
      t.string :nationality
      t.integer :postcode
      t.string :prefecture_id
      t.string :city
      t.string :town
      t.string :phone01
      t.string :phone02
      t.string :email
      t.string :belong_id, null:false
      t.string :company
      t.string :location
      t.string :phone03
      t.string :kana02
      t.string :name02
      t.string :relationship
      t.string :phone04
      t.integer :number
      t.text :free
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
