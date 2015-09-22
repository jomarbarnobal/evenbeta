class EventsController < ApplicationController
	def index
		
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
