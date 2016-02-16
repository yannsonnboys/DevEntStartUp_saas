class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.save

			name = params[:contact][:name]
			email = params[:contact][:email]
			body = params[:contact][:comments]

			# Method from contact_mailer.erb
			ContactMailer.contact_email(name, email, body).deliver

			flash[:success] = 'Message has been sent.'
			redirect_to new_contact_path

		else

			flash[:danger] = 'Error occured. Message has not been sent, please fill all the fields.'
			redirect_to new_contact_path

		end
	end

	private
		def contact_params
			params.require(:contact).permit(:name, :email, :comments)
		end
end