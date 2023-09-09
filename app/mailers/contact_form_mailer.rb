class ContactFormMailer < ApplicationMailer
  def contact_form_submission(contact)
    @contact = contact
    mail(to: 'remca12191@gmail.com', subject: 'New Contact Form Submission')
  end
end
