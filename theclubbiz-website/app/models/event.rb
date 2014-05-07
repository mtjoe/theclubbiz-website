class Event < ActiveRecord::Base
	has_many :Ticket
  	has_many :EventFeedback
  	has_many :EventFollower
  	has_many :SocietyEvent
end
