class UserMailer < ActionMailer::Base
  default from: "notifications@railswolf.herokuapp.com"
 
  def welcome_email(user)
    @user = user
    @url  = "#{root_url}signin" 

    delivery_options = { user_name: 'avielus@gmail.com',
                         password: 'jNbTQJagVLK7D3V5ukmQUA',
                         address: 'smtp.mandrillapp.com',
                         port: 587}
    mail(to: @user.email, subject: 'Welcome to Railswolf',
         delivery_method_options: delivery_options)
  end
end
