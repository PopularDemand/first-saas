class PagesController < ApplicationController
	def home
		#used in the home.html to show which plan is selected to register for
		@basic_plan = Plan.find(1)
		@pro_plan = Plan.find(2)
	end

	def about
	end
end