class Event < ActiveRecord::Base
	has_many :Ticket
  	has_many :EventFeedback
  	has_many :EventFollower
  	has_many :SocietyEvent
  	validates_associated :Ticket
  	validates_associated :EventFeedback
  	validates_associated :EventFollower
  	validates_associated :SocietyEvent
end
