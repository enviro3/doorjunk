class ApplicationMailer < ActionMailer::Base
  default to: doorjunkcontact.com

    def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body`enter code here`

      mail(from: "doorjunkcontact@gmail.com", subject: 'Contact Request')
    end

    def delivery_now
      mail(to: doorjunkcontact.com)
    end
end
