class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :category
      t.string :name
      t.string :color
      t.integer :price
      t.string :brand

      t.timestamps
    end
  end
end
