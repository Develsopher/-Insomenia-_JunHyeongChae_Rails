class ChangeColumnFromCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :category_name_eng, :string
  end
end
