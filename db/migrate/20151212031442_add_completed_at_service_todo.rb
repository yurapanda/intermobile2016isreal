class AddCompletedAtServiceTodo < ActiveRecord::Migration
  def change
  	add_column :service_todos, :completed_at, :datetime
  end
end
