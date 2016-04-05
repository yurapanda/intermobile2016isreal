class ServiceTodoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_todo_mailer.new_services_todo.subject
  #
  def new_service_todo(service_todo)
    @service_todo = service_todo
    @cars_todo_list = @service_todo.cars_todo_list

    mail to: @cars_todo_list.user.email, subject: "Added service for your Car #{@cars_todo_list.car_plate_number} "
  end

  def on_going(service_todo)
    @service_todo = service_todo
    @cars_todo_list = @service_todo.cars_todo_list

    mail to: @cars_todo_list.user.email, subject: "Car #{@cars_todo_list.car_plate_number} service on-going "
  end
  
  def completed(service_todo)
    @service_todo = service_todo
    @cars_todo_list = @service_todo.cars_todo_list

    mail to: @cars_todo_list.user.email, subject: "Car #{@cars_todo_list.car_plate_number} service completed  "
  end

  def paid(service_todo)
    @service_todo = service_todo
    @cars_todo_list = @service_todo.cars_todo_list

    mail to: @cars_todo_list.user.email, subject: "Car #{@cars_todo_list.car_plate_number} paid  "
  end
end
