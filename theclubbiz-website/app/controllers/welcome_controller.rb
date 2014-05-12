class WelcomeController < ApplicationController
  def index
  	case params[:state]
  	when "adminSoc"

  	when "followedSoc"

  	when "followedEvent"

  	when "socByCategory"
      @header = "Society By Categories"
      @categories = Category.all
  	when "socByUniversity"
      @header = "Society By University"
      @universities = University.all
  	when "allUpcomingEvents"
  		@header = "Upcoming Events - ALL"
	  	@upcomingEvents = Event.all

  	when "allPastEvents"
  		@header = "Past Events - ALL"
	  	@pastEvents = Event.all

  	when "eventByCategory"
      @header = "Event By Categories"
  		@categories = Category.all

  	when "eventByUniversity"
  		@header = "Event By University"
      @universities = University.all
  	else
  		@header = "Societies - ALL"
  		@societies = Society.all
  	end
  end

  def aboutUs

  end

  def search(query)
    
  end
end
