class UserMailer < ApplicationMailer
  default from: "bohdanlaluck@hotmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: "bohdanlaluck@hotmail.com",
         to: email,
         subject: "Thanks for signing up #{name}")
  end
end
