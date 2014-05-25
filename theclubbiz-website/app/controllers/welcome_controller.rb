class WelcomeController < ApplicationController
  def index

  	case params[:state]

  when "search"
    query = params[:search]
    @header = "Search query: #{query}"

    if query = ""
      @societies = []
      @upcomingEvents = []
      @pastEvents = []
      @categories = []
      @universities = []
    else
      # Find societies
      @societies = Society.where("name like ?", "%#{query}%")
      @societies << Society.where("email like ?", "%#{query}%")
      @societies << Society.where("description like ?", "%#{query}%")
      @societies << Society.where("short_description like ?", "%#{query}%")

      @societies.flatten!.uniq!

      # Find events
      events = Event.where("name like ?", "%#{query}%")
      events << Event.where("description like ?", "%#{query}%")
      events << Event.where("short_description like ?", "%#{query}%")

      events.flatten!.uniq!

      @upcomingEvents = []
      @pastEvents = []
      events.each do |e|
        if e.start_time > Time.now
          @upcomingEvents << e
        else
          @pastEvents << e
        end
      end

      @universities = University.where("name like ?", "%#{query}%")
      @categories = Category.where("name like ?", "%#{query}%")
    end

    # Display Announcements
    when "announcements"
      @header = "Announcements"
      @announcements = []
      
      # To All Societies
      @announcements << Announcement.where(allSoc: true)
      university_ids = []

      # From Society Admins
      socFollower = SocietyFollower.where(user_id: current_user.id)
      socFollower.each do |sf|
        sf_announce = Announcement.where(society_id: sf.society_id)
        @announcements << sf_announce
      end

      # From University Admins
      university_ids.uniq
      university_ids.each do |ui|
        ui_announce = Announcement.find_by(university_id: ua)
        @announcements << ui_announce
      end

      @announcements.flatten!

    # Display Invitations
    when "invitations"
      @header = "Invitations"
      @invitations = []

      admin_soc_ids = SocietyAdmin.where(user_id: current_user.id)
      admin_soc_ids.each do |admin_soc_id|
        (Invitation.where(society_id: admin_soc_id.society_id)).each do |invitation|
          @invitations << invitation
        end
      end
      
    when "myNetworks"
      @header = "My Networks"
      societies = []
      @networks = []

      socAdmin = SocietyAdmin.where(user_id: current_user.id)
      socAdmin.each do |sa|
        societies << Society.find_by(id: sa.society_id)
      end

      societies.each do |society|
        @networks << Network.find(SocietyNetwork.find())
      end

      @networks.uniq!

    # Display Administered Societies
  	when "adminSoc"
      @header = "Administered Societies"
      @societies = []
      (SocietyAdmin.where(user_id: current_user.id)).each do |sa|
        @societies << Society.find_by(id: sa.society_id)
      end

    # Display Followed Societies
  	when "followedSoc"
      @header = "Followed Societies"
      @societies = []
      societies = SocietyFollower.where(user_id: current_user.id)

      societies.each do |s|
        @societies << Society.find_by(id: s.society_id)
      end

    # Display Followed Events
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

    # Display Categories for Societies
  	when "socByCategory"
      if params[:catId].nil?
        @header = "Society By Categories"
        @categories = Category.all
      else
        @header = "Society By Category: #{(Category.find_by(id: params[:catId])).name}"
        @societies = Society.where(category_id: params[:catId])
      end

    # Display Universities for Societies
  	when "socByUniversity"

      if params[:uniId].nil?
        @header = "Society By University"
        @universities = University.all
      else
        @header = "Society By University: #{(University.find_by(id: params[:uniId])).name}"
        @societies = Society.where(university_id: params[:uniId])
      end

    # Display All Upcoming Events
  	when "allUpcomingEvents"
  		@header = "Upcoming Events - ALL"
      @upcomingEvents = []
	  	allEvents = Event.all

      allEvents.each do |event|
        if event.start_time >  Time.now
          @upcomingEvents << event
        end
      end

  	when "allPastEvents"
  		@header = "Past Events - ALL"
      @pastEvents = []
      allEvents = Event.all

      allEvents.each do |event|
        if event.start_time <=  Time.now
          @pastEvents << event
        end
      end

  	when "eventByCategory"
      if params[:catId].nil?
        @header = "Events By Categories"
        @categories = Category.all
      else
        @header = "Events By Category: #{(Category.find_by(id: params[:catId])).name}"
        @upcomingEvents = []
        eve_cat = EventCategory.where(category_id: params[:catId])
        eve_cat.each do |ec|
          @upcomingEvents << Event.find_by(id: ec.event_id)
        end
      end

  	when "eventByUniversity"
  		if params[:uniId].nil?
        @header = "Events By University"
        @universities = University.all
      else
        @header = "Events By University: #{(University.find_by(id: params[:uniId])).name}"
        societies = Society.where(university_id: params[:uniId])
        @upcomingEvents = []
        @pastEvents = []
        societies.each do |s|
          (SocietyEvent.where(society_id: s.id)).each do |se|
            (Event.where(id: se.event_id)).each do |e|
              if e.start_time > Time.now
                @upcomingEvents << e
              else
                @pastEvents << e
              end
            end
          end
        end

        
      end
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
