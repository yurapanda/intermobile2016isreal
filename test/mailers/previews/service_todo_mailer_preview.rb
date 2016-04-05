# Preview all emails at http://localhost:3000/rails/mailers/service_todo_mailer
class ServiceTodoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/service_todo_mailer/new_services_todo
  def new_service_todo
  	service_todo = ServiceTodo.last
    ServiceTodoMailer.new_service_todo(service_todo)
  end

end
