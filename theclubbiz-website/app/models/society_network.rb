class SocietyNetwork < ActiveRecord::Base
	belongs_to :Society
	belongs_to :Network
end
