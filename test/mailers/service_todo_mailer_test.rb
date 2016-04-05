require 'test_helper'

class ServiceTodoMailerTest < ActionMailer::TestCase
  test "new_services_todo" do
    mail = ServiceTodoMailer.new_services_todo
    assert_equal "New services todo", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
