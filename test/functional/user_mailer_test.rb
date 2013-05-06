require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "applicant_confirmation" do
    mail = UserMailer.applicant_confirmation
    assert_equal "Applicant confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
