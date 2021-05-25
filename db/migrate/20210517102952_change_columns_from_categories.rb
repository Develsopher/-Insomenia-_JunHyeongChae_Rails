class ChangeColumnsFromCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :body, :text
    add_column :categories, :position, :integer
    add_column :categories, :image, :string
  end
end
