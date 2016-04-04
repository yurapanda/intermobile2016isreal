class AddStartedAtServiceTodo < ActiveRecord::Migration
  def change
  	add_column :service_todos, :started_at, :datetime
  end
end
