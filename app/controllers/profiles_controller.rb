class ProfilesController < ApplicationController

	def new
		# Form where user can fill oput their own profile.
		@user = User.find(params[:user_id])
		@profile = @user.build_profile
	end
end