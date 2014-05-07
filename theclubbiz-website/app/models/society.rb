class Society < ActiveRecord::Base
	has_many :SocietyFeedback
  	has_many :SocietyAdmin
  	has_many :SocietyEvent
  	has_many :SocietyFollower
end
