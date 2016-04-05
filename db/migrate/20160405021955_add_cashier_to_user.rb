class AddCashierToUser < ActiveRecord::Migration
  def change
    add_column :users, :cashier, :boolean
  end
end
