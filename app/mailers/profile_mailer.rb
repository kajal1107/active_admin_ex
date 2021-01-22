class ProfileMailer < ApplicationMailer
	default from: 'kajalyuvasoft298@gmail.com'
  layout 'mailer'

	def profile_email(user)
		@user = user
		@hr_user = User.first
		mail(to: @hr_user.email, subject: 'Job Application')
	end
end