class EventFollower < ActiveRecord::Base
	belongs_to :User
	belongs_to :Event
end
