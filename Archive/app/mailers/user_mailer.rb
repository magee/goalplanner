class UserMailer < ActionMailer::Base
=begin
  TODO:  change this to proper foundersuite email
=end
  default from: "mageemooney@me.com"

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => 'mageemooney@gmail.com',
    :password             => 'somepasswordhere',
    :authentication       => 'plain',
    :enable_starttls_auto => true  }


  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

  def test_assigned(email)
    mail(:to => email, :subject => "[FS-GoalPlanner] A new task has been assigned to you")
  end

end
