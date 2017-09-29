class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :name
      t.string :category
      t.string :color
      t.string :brand
      t.string :img
    end
  end
end
