class RemoveMerchandises < ActiveRecord::Migration[5.1]
  def change
    drop_table :merchandises
  end
end
