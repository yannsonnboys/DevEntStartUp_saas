class Contact < ActiveRecord::Base
	# check if the contact form is not empty
	validates :name, presence: true
	validates :email, presence: true
end