class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  #def new_record_notification
 #   @greeting = "Hi"

  #  mail to: "ektigah@gmail.com"
  #    @record = record
  #    mail to: "ektigah@gmail.com", subject: "Success! You did it."
 # end

  
  def new_user_notification(user)
    @greeting = "Hi"
    @user = user
    mail to: @user.email, subject: "Welcome To E Blog App"
  end
  
  
  
end
