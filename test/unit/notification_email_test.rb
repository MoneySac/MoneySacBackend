require 'test_helper'
class NotificationMailerTest < ActionMailer::TestCase
 
  tests NotificationMailer
 
  test "notification_email" do
 
    expected = new_mail
    expected.from    = "money@sac.xxx"
    expected.to      = "yoyo@dat.com"
    expected.subject = "now suck it"
    expected.date    = Time.now
 
    actual = nil
    assert_nothing_raised { actual = NotificationMailer.notification_mailer(@recipient) }
    assert_not_nil actual
 
    expected.message_id = '<123@456>'
    actual.message_id = '<123@456>'
 
    # assert_equal expected.encoded, actual.encoded
 
   end
 
end