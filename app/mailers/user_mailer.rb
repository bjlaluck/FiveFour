class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'bohdanlaluck@hotmail.com',
         subject: "A new contact form message from #{name}")
  end

  def new_user_form(email, name)
      mail(from: "bohdanlaluck@hotmail.com",
         to: email,
         subject: "Thanks for signing up #{name}")
  end
end
