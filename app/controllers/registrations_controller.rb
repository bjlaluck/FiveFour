class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super do
      @name = params[:name]
      @email = params[:email]

=begin
      ActionMailer::Base.mail(from: 'bohdanlaluck@hotmail.com',
        to: @email,
        subject: "#{@name}, Welcome to Bikes Berlin",
        body: 'Test').deliver_now
=end

    NewuserMailer.new_user_form(@email, @name).deliver_now

    end
  end

  def update
    super
  end
end
