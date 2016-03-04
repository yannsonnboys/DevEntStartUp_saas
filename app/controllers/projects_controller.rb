class ProjectsController < ApplicationController

	def new
		# Form where user can fill out their own project.
		@user = User.find(params[:user_id]) # determine the user who is log in
		@project = @user.project.build # Building a form for the project
	end

	def create
		@user = User.find(params[:user_id])
		@profile = @user.project.build(project_params)

		if @project.save	
			flash[:success] = "Your project is now update!"
			redirect_to user_path(params[:user_id])
		else
			render action: :new
		end			
	end

	private
	  def project_params
		params.require(:project).permit(:category, :business_name, :country, :province_or_state, :city, :zip_code, :address, :phone, :email, :website, :avatar, :business_description)
	  end


end