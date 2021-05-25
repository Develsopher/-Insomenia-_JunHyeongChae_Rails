class ChangeColumnsFromUser1 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_id, :string, null: false, default: ""
    remove_column :users, :image
    remove_column :users, :point
    remove_column :users, :reviews_average
    remove_column :users, :reviews_count
    remove_column :users, :provider
    remove_column :users, :link
  end
end
