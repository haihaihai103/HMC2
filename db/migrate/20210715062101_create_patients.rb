class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :kana
      t.string :name, null:false
      t.string :gender, null:false
      t.string :nationality
      t.integer :postcode
      t.string :prefecture
      t.string :city
      t.string :town
      t.integer :phone01
      t.integer :phone02
      t.timestamps
    end
  end
end
