class SocietyEvent < ActiveRecord::Base
	belongs_to :Event
	belongs_to :Society
end
