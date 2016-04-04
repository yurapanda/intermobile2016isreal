class AddOwnerNameToCarsTodoList < ActiveRecord::Migration
  def change
    add_column :cars_todo_lists, :owner_name, :string
  end
end
