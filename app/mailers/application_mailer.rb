class ApplicationMailer < ActionMailer::Base

    def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body

      mail(
        from: "doorjunkcontact@gmail.com",
        to: "doorjunkcontact@gmail.com",
        subject: 'You have feedback!'
      )
    end
end
