class UserMailer < ApplicationMailer
  default from: "bohdanlaluck@hotmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'bohdanlaluck@hotmail.com',
         subject: "A new contact form message from #{name}")
  end
end
