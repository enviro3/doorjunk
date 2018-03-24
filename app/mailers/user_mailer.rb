class UserMailer < ApplicationMailer
  default :from => "cvurlumis@gmail.com"

  def email_comment
    @user = user
    @url  = "http://example.com/login"
    mail(:to => 'cvurlumis@gmail.com', :subject => "DoorJunk Feedback!")
  end
end
