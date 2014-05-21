class Invitation < ActiveRecord::Base
	belongs_to :Society
	belongs_to :Event
end
