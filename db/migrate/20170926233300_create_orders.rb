class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user_id, foreign_key: true
      t.references :merchandise_id, foreign_key: true

      t.timestamps
    end
  end
end
