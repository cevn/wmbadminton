class AdminMailer < ActionMailer::Base
  default from: "badmintonwm@gmail.com"
 
  def welcome_email(user)
    @user = user
    @url  = "#{root_url}signin" 

  end

  def new_admin_waiting_for_approval(admin) 
    @admin = admin
    @url = "#{root_url}/admin/sign_in"

    delivery_options = { user_name: 'avielus@gmail.com',
                         password: 'jNbTQJagVLK7D3V5ukmQUA',
                         address: 'smtp.mandrillapp.com',
                         port: 587}
    mail(to: 'avielus@gmail.com', subject: 'Approve an Admin, Sameer',
         delivery_method_options: delivery_options)

  end
end
