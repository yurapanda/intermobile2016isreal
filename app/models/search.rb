class Search < ActiveRecord::Base

belongs_to :cars_todo_lists

	def search_cars_todo_lists
		cars_todo_lists = CarsTodoList.all
		cars_todo_lists= cars_todo_lists.where(["car_plate_number = ?", "#{car_plate_number}"]) if car_plate_number.present?
		
		cars_todo_lists= cars_todo_lists.where(["car_model = ?", "#{car_model}"]) if car_model.present?

		return cars_todo_lists
end
end