class ProfilesController < ApplicationController

	before_action :authenticate_user!
	before_action :only_current_user


	def new
		# Form where user can fill out their own profile.
		@user = User.find(params[:user_id]) # determine the user who is log in
		@profile = Profile.new # Building a form for the profile
	end

	def create
		@user = User.find(params[:user_id])
		@profile = @user.build_profile(profile_params)

		if @profile.save
			flash[:success] = "Your profile is now update!"
			redirect_to user_path(params[:user_id])
		else
			render action: :new
		end			
	end

	def edit
		@user = User.find(params[:user_id])
		@profile = @user.profile
	end

	def update
		@user = User.find(params[:user_id])
		@profile = @user.profile

		if @profile.update_attributes(profile_params)
			flash[:success] = "Your profile is now update!"
			redirect_to user_path(params[:user_id])
		else
			render action: :edit
		end
	end

	private

	  def profile_params
		params.require(:profile).permit(:first_name, :last_name, :sex, :avatar, :job_title, :phone_number, :contact_email, :country, :location, :description)
	  end

	  def only_current_user
	  	@user = User.find(params[:user_id])
	  	redirect_to(root_url) unless @user == current_user
	  end


end