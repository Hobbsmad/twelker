class ContactusMailer < ApplicationMailer
  def newcontact(email, title, name, subject, phone, company)
    @email = email
    @title = title
    @name = name
    @subject = subject
    @phone = phone
    @company = company
    mail(to: 'info@universalhr.org', subject: 'Contact Request')
  end
end
