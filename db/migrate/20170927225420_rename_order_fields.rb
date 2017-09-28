class RenameOrderFields < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :user_id_id, :user_id
    remove_column :orders, :merchandise_id_id
  end
end
