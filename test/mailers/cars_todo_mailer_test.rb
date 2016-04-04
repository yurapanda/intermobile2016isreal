require 'test_helper'

class CarsTodoMailerTest < ActionMailer::TestCase
  test "new_cars_todo" do
    mail = CarsTodoMailer.new_cars_todo
    assert_equal "New cars todo", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
