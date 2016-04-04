class AddUserIndexToCarsTodoLists < ActiveRecord::Migration
  def change
    add_reference :cars_todo_lists, :user, index: true, foreign_key: true
  end
end
