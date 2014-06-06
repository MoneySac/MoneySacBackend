class NotificationMailer < ActionMailer::Base
  default (:from => "money@sac.xxx", :to => "kevinnoll90@gmail.com") 

  def notification_mailer(notification)
  	@notification = notification
  	@url = "http://moneysac.xxx/"
  	mail(:subject => "now suck it")
  end 
end
