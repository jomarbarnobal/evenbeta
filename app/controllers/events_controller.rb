class EventsController < ApplicationController
	before_action :authenticate_user!
	layout 'dashboard', only: [:new, :edit, :delete]	
	def index
		@events = Event.all.order('created_at DESC')
	end

	def new
		@event = Event.new
	end

	def create 
		@event = Event.new(event_params)
		@event.save

		redirect_to @event
	end

	def show
		@event = Event.find(params[:id])
	end

	private

	def event_params
		params.require(:event).permit(:title, :content, :starts, :ends, :location, :image)
	end
end
