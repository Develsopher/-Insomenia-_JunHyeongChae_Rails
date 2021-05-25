class ChangeColumnsFromItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :list_price, :price
    remove_column :items, :video
  end
end
