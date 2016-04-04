class AddReadyForPickupAtToCarsTodoList < ActiveRecord::Migration
  def change
    add_column :cars_todo_lists, :ready_for_pickup_at, :datetime
    add_column :cars_todo_lists, :pickedup_at, :datetime
  end
end
