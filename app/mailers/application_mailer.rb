class ApplicationMailer < ActionMailer::Base
  default to: # my email address

    def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body`enter code here`

      mail(from: "doorjunkcontact@gmail.com", subject: 'Contact Request')
    end
end
