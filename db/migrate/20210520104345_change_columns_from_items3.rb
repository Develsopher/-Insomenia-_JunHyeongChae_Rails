class ChangeColumnsFromItems3 < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :category_name, :string
  end
end
