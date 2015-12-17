class UsersController < ApplicationController
	before_action :authenticate_user!
	
	def show
		#use id instead of user_id based on the url format (just has :id, not :user_id)
		@user = User.find( params[:id] )
	end

	def index
		@users = User.all
	end
end
