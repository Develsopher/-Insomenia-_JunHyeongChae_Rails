class ChangeColumnsFromOption < ActiveRecord::Migration[6.0]
  def change
    remove_column :options, :option_price
  end
end
