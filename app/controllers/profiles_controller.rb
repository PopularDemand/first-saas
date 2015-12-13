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
		@user = User.find( params[:user_id] )
		#grab the information from the form
		@profile = @user.build_profile(profile_params)
		if @profile.save
			flash[:success] = "Profile Updated!"
			redirect_to user_path( params[:user_id] ) #user_path requires a user id
		else
			flash[:danger] = "Profile not updated. Please try again."
			render action: :new
		end
	end

	private
		def profile_params
			params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
		end
end
