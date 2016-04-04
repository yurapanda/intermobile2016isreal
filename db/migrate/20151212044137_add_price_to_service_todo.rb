class AddPriceToServiceTodo < ActiveRecord::Migration
  def change
    add_column :service_todos, :price, :decimal
  end
end
