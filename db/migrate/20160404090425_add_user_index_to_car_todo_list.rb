class AddUserIndexToCarTodoList < ActiveRecord::Migration
  def change
  	remove_column :cars_todo_lists, :car_owner_email
  	remove_column :cars_todo_lists, :owner_name
  end
end
