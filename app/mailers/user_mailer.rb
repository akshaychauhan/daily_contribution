class UserMailer < ActionMailer::Base
  default from: "akshay.chauhan36@gmail.com"

  def test_mail(user)
    mail(to: "akshay@wavespot.net", subject: "test")
  end

end
