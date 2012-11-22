ActionMailer::Base.smtp_settings = {  
:address              => "smtp.gmail.com",  
:port                 => 587,  
:domain               => "info@elblog.com",  
:user_name            => "gmoralestinoco@gmail.com",  
:password             => "no",  
:authentication       => "plain",  
:enable_starttls_auto => true  
} 