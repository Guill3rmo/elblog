class BloggerMailer < ActionMailer::Base
  	
  	def welcome_mail(user)  
		mail(:to => blogger.email, :subject => "Registered", :from => "info@blogdeguille.com")  
	end 
end
