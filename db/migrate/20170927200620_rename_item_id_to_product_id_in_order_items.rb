class RenameItemIdToProductIdInOrderItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :order_items, :item_id, :product_id
  end
end
