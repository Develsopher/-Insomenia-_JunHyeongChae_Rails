class ChangeColumnFromItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :user_id, :bigint
    add_index :items, :user_id
  end
end
