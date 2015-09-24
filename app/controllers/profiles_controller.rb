class ProfilesController < ApplicationController
	
	def profile
		@events = Event.all.order('created_at DESC')
	end

end
