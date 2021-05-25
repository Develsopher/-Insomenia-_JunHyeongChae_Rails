class UpdateColumnsFromItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :category_id, :integer
    add_foreign_key :items, :categories
    add_column :items, :brand, :string
    remove_column :items, :start_at
    remove_column :items, :end_at
    remove_column :items, :_type
    remove_column :items, :lat
    remove_column :items, :lng
  end
end
