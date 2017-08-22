class ContactusMailer < ApplicationMailer
  def newcontact(email, title, name, subject)
    @email = email
    @title = title
    @name = name
    @subject = subject
    mail(to: 'jason.hobbs@digisanctum.com', subject: 'Contact Request')
  end
end
