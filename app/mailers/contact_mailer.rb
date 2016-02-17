class ContactMailer < ActionMailer::Base
	# Default email
	default to: 'y.e.s.d@icloud.com' 

	def contact_email(name, email, body)
		@name = name
		@email = email
		@body = body

		mail(from: email, subject: 'Contact Form Message')
	end
end