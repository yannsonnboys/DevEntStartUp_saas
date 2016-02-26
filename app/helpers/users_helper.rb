module UsersHelper

	def job_title_icon
		if @user.profile.job_title == "Developer(Web)"
			"<i class='fa fa-code'></i>".html_safe
		elsif @user.profile.job_title == "Developer(Apps-Android)"
			"<i class='fa fa-android'></i>".html_safe
		elsif @user.profile.job_title == "Developer(Apps-iOS)"
			"<i class='fa fa-apple'></i>".html_safe	
		elsif @user.profile.job_title == "Designer"
			"<i class='fa fa-cubes'></i>".html_safe
		elsif @user.profile.job_title == "Entrepreneur"
			"<i class='fa fa-lightbulb-o'></i>".html_safe
		elsif @user.profile.job_title == "Investor"
			"<i class='fa fa-dollar'></i>".html_safe
			
		end
	end

	def sex_icon
		if @user.profile.sex == "Male"
			"<i class='fa fa-male'></i>".html_safe
		elsif @user.profile.sex == "Female"
			"<i class='fa fa-female'></i>".html_safe	
		end
		
	end
end
