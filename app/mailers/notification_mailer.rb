class NotificationMailer < ActionMailer::Base
  default :from => "money@sac.xxx", :to=>"yoyo@dat.com"

  def notification_mailer(notification)
  	@headline = 'headline'
  	@content = 'content'
  	@notification = notification
  	@url = "http://moneysac.xxx/"
  	mail(:subject => "now suck it")
  end 
end
