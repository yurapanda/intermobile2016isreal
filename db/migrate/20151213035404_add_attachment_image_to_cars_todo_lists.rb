class AddAttachmentImageToCarsTodoLists < ActiveRecord::Migration
  def self.up
    change_table :cars_todo_lists do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cars_todo_lists, :image
  end
end
