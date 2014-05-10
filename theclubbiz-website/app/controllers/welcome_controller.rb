class WelcomeController < ApplicationController
  def index
  	case params[:state]
  	when "adminSoc"

  	when "followedSoc"

  	when "followedEvent"

  	when "socByCategory"

  	when "socByUniversity"

  	when "allUpcomingEvents"
  		@header = "Upcoming Events - ALL"
	  	@events = Event.all

  	when "allPastEvents"
  		@header = "Past Events - ALL"
	  	@events = Event.all

  	when "eventByCategory"
  		
  	when "eventByUniversity"
  		
  	else
  		@header = "Societies - ALL"
  		@societies = Society.all
  	end
  end

  def aboutUs
    
  end
end
