class ChangeColumnFromItmes < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :sale_price
    
  end
end
