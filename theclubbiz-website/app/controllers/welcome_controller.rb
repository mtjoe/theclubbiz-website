class WelcomeController < ApplicationController
  def index

  	case params[:state]
    when "announcements"
      @header = "Announcements"
      @announcements = []
      
      # To All Societies
      (@announcements << Announcement.where(allSoc: true)).flatten!
      university_ids = []

      # From Society Admins
      socFollower = SocietyFollower.where(user_id: current_user.id)
      socFollower.each do |sf|
        sf_announce = Announcement.where(society_id: sf.society_id)
        (@announcements << sf_announce).flatten!
      end

      # From University Admins
      university_ids.uniq
      university_ids.each do |ui|
        ui_announce = Announcement.find_by(university_id: ua)
        (@announcements << ui_announce).flatten!
      end
      
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
      if params[:catId].nil?
        @header = "Society By Categories"
        @categories = Category.all
      else
        @header = "Society By Category: #{(Category.find_by(id: params[:catId])).name}"
        @societies = []
        soc_cat = SocietyCategory.where(category_id: params[:catId])
        soc_cat.each do |sc|
          @societies << Society.find_by(id: sc.society_id)
        end
      end
  	when "socByUniversity"

      if params[:uniId].nil?
        @header = "Society By University"
        @universities = University.all
      else
        @header = "Society By University: #{(University.find_by(id: params[:uniId])).name}"
        @societies = []
        soc_uni = SocietyUniversity.where(university_id: params[:uniId])
        soc_uni.each do |su|
          @societies << Society.find_by(id: su.society_id)
        end
      end

  	when "allUpcomingEvents"
  		@header = "Upcoming Events - ALL"
	  	@upcomingEvents = Event.all

  	when "allPastEvents"
  		@header = "Past Events - ALL"
	  	@pastEvents = Event.all

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
        @events = []
        soc_uni = SocietyUniversity.where(university_id: params[:uniId])
        soc_uni.each do |su|
          (SocietyEvent.where(society_id: su.society_id)).each do |se|
            @events << Event.find_by(id: su.event_id)
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
