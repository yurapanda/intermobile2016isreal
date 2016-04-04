class RenameBillSummaryToPaidAmount < ActiveRecord::Migration
  def change
  	rename_column :cars_todo_lists, :bill_summary, :paid_amount
  end
end
