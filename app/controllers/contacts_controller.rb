class ContactsController < ApplicationController
	def new
		#used in new.html.erb view
		@contact = Contact.new
	end

	def create
	end
end