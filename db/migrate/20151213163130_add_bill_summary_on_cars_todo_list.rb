class AddBillSummaryOnCarsTodoList < ActiveRecord::Migration
  def change
  	add_column :cars_todo_lists, :bill_summary, :decimal
  end
end
