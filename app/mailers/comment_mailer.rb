class CommentMailer < ActionMailer::Base
	
	def comment_notification(post)
		@post = post 
		mail(:to => @post.blogger.email, :subject => "New comment created", :from => "info@elblog.com")  
	end  
end  