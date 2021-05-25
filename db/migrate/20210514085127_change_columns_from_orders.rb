class ChangeColumnsFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :zipcode
    remove_column :orders, :address1
    remove_column :orders, :address2
    add_column :orders, :status, :integer
    add_column :orders, :receiver_address, :string
  end
end
