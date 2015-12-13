class ProfilesController < ApplicationController
	# controllers have access to query string parameters
	def new
		# Form for each user to create their page
		# Gets active users id
		@user = User.find(params[:user_id])
		# build_profile available because user model nested with profile
		@profile = @user.build_profile
	end

	def create
	end
end
