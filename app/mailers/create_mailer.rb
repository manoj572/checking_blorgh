class CreateMailer < ActionMailer::Base
    default :from => "notification@example.com"
    def welcome_email(creates)
        @create = creates
        @url  = "http://example.com/login"
        mail(:to => creates.email, :subject => "Welcome to My Awesome Site")
    end
end
