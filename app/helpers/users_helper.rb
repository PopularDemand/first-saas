module UsersHelper

	def job_title_icon
		# instance variable is defined in controller
		if @user.profile.job_title == "Developer"
			"<i class='fa fa-code'></i>".html_safe
		elsif @user.profile.job_title == "Entrepreneur"
			"<i class='fa fa-lightbulb-o'></i>".html_safe
		elsif @user.profile.job_title == "Investor"
			"<i class='fa fa-usd'></i>".html_safe
		end
	end
	
end