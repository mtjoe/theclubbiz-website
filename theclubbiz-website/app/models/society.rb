class Society < ActiveRecord::Base
	has_many :SocietyFeedback
  	has_many :SocietyAdmin
  	has_many :SocietyEvent
  	has_many :SocietyFollower
  	validates_associated :SocietyFeedback
  	validates_associated :SocietyAdmin
  	validates_associated :SocietyEvent
  	validates_associated :SocietyFollower
end
