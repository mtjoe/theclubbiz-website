class User < ActiveRecord::Base
	has_many :SocietyFollower
  	has_many :SocietyAdmin
  	has_many :EventFollower
  	has_many :Ticket
  	has_many :Feedback
	validates :first_name, presence: true
	validates :last_name, presence: true
end
