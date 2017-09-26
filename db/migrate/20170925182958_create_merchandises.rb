class CreateMerchandises < ActiveRecord::Migration[5.1]
  def change
    create_table :merchandises do |t|
      t.string :category
      t.string :name
      t.string :size
      t.string :color
      t.string :price
      t.string :brand

      t.timestamps
    end
  end
end
