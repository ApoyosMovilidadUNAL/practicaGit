require 'test_helper'

class MessageTest < ActiveSupport::TestCase
 test "message attributes must not be empty" do
  message = Message.new
  assert message.invalid?
  assert message.errors[:title].any?
  assert message.errors[:description].any?
 end

 test "message is not valid without a unique title" do
  message = Message.new
  assert message.invalid?
  assert_equal ["can't be blank"], message.errors[:title]
 end

 test "message is not valid if the description is too short" do
  message = Message.new
  assert message.invalid?
  assert_equal ["can't be blank"], message.errors[:title]
 end
end
