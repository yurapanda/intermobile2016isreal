class CarsTodoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.cars_todo_mailer.new_cars_todo.subject
  #
  	def new_cars_todo_list(cars_todo_list)
	    @cars_todo_list = cars_todo_list
	 
	    mail to: @cars_todo_list.user.email, subject: "Your Car #{@cars_todo_list.car_plate_number} is now Being Maintained"
	end

  def ready_for_pickup(cars_todo_list)
    @cars_todo_list = cars_todo_list

    mail to: @cars_todo_list.user.email, subject: "Your Car #{@cars_todo_list.car_plate_number} is now ready for pickup."
  end 

  def picked_up(cars_todo_list)
    @cars_todo_list = cars_todo_list

    mail to: @cars_todo_list.user.email, subject: "Your Car #{@cars_todo_list.car_plate_number} has been pickedup."
  end 

end
