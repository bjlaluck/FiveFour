class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super do
      @name = params[:name]
      @email = params[:email]

  =begin
      ActionMailer::Base.mail(from: @email,
        to: 'bohdanlaluck@hotmail.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  =end
      NewUserMailer.new_user_form(@email, @name).deliver_now
    end
  end

  def update
    super
  end
end
