class NewuserMailer < ApplicationMailer
  default from: "bohdanlaluck@hotmail.com"

  def new_user_form(email, name)
      mail(from: "bohdanlaluck@hotmail.com",
         to: email,
         subject: "Thanks for signing up #{name}")
  end
end
