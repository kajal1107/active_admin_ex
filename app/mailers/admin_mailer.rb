class AdminMailer < ApplicationMailer
	default from: 'kajalyuvasoft298@gmail.com'
  layout 'mailer'

	def admin_email(user)
		@user = user
		mail(to: @user.email, subject: 'Interview Details')
	end	
end
