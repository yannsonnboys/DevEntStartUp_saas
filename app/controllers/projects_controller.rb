class ProjectsController < ApplicationController

	def new
		# Form where user can fill out their own project.
		@user = User.find(params[:user_id]) # determine the user who is log in
		@project = @user.project.build # Building a form for the project
	end
end