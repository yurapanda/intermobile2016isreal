class AddPaidAtServiceTodo < ActiveRecord::Migration
  def change
  	add_column :service_todos, :paid_at, :datetime
  end
end
