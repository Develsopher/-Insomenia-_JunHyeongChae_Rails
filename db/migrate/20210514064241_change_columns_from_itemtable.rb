class ChangeColumnsFromItemtable < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :category_id
    remove_column :items, :user_id
    remove_column :items, :image
    remove_column :items, :status
    remove_column :items, :view_count
    remove_column :items, :zipcode
    remove_column :items, :address1
    remove_column :items, :address2
  end
end
