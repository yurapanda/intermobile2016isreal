class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :car_plate_number
      t.string :car_model
      t.string :car_owner_email
      t.string :owner_name

      t.timestamps null: false
    end
  end
end
