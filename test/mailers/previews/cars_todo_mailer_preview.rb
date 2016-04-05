# Preview all emails at http://localhost:3000/rails/mailers/cars_todo_mailer
class CarsTodoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/cars_todo_mailer/new_cars_todo
  def new_cars_todo_list
  	cars_todo_list = CarsTodoList.last
    CarsTodoMailer.new_cars_todo_list(cars_todo_list)
  end

end
