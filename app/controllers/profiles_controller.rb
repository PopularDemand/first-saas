class ProfilesController < ApplicationController
	#user must be logged in to access any pages from profiles controller
	before_action :authenticate_user!
	before_action :only_current_user

	# controllers have access to query string parameters
	def new
		# Form for each user to create their page
		# Gets active users id
		@user = User.find(params[:user_id])
		
		# build_profile available because user model nested with profile
		# build profile will wipe any existing profile associated with the user
		# when the user gets to the /new form
		#@profile = @user.build_profile
		@profile = Profile.new
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

	def edit
		@user = User.find( params[:user_id] )
		@profile = @user.profile
	end

	def update
		@user = User.find( params[:user_id] )
		@profile = @user.profile

		if @profile.update_attributes(profile_params)
			flash[:success] = "Profile Updated!"
			redirect_to user_path( params[:user_id] )
		else
			flash[:danger] = "Profile not updated. Try again."
			render action: :edit
		end
	end

	private
		def profile_params
			params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
		end

		def only_current_user
			@user = User.find( params[:user_id] )
			redirect_to(root_url) unless @user == current_user
		end
end
