# app/mailers/user_mailer.rb

class UserMailer < ApplicationMailer
  default from: 'aman.ahirwar@preciousinfosystem.com'

  def send_email(recipient_email, subject, recipient_name)
    @subject = subject
    @recipient_name = recipient_name
    mail(to: recipient_email, subject: subject)
  end
end
