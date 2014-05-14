class WelcomeController < ApplicationController
  def index
  	case params[:state]
  	when "adminSoc"

  	when "followedSoc"

      @header = "Followed Societies"
      @societies = []
      societies = SocietyFollower.where(user_id: current_user.id)

      societies.each do |s|
        @societies << Society.find_by(id: s.society_id)
      end

  	when "followedEvent"
      @header = "Followed Event"
      events = EventFollower.where(user_id: current_user.id)

      @upcomingEvents = []
      @pastEvents= []

      events.each do |e|
        event = Events.find_by(id: e.event_id)
        if Date.today > event.time
          @upcomingEvents << event
        else
          @pastEvents << event
        end
      end

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
