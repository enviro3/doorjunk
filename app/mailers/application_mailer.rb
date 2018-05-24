class ApplicationMailer < ActionMailer::Base

  default from: "doorjunkcontact@gmail.com"

  def send_feedback_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(
      from: @email,
      to: "doorjunkcontact@gmail.com",
      subject: 'You have feedback!'
    )
  end
end
