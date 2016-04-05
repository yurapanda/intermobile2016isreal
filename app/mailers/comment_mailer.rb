class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(comment)
	    @comment = comment
	 	@cars_todo_list = @comment.cars_todo_list

	    mail to: @cars_todo_list.user.email, subject: "New Comment on  #{@cars_todo_list.car_plate_number} "
	end
end
