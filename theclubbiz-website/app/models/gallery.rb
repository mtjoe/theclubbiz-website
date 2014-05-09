class Gallery < ActiveRecord::Base
	belongs_to :User
	belongs_to :Society
	belongs_to :Event
end
