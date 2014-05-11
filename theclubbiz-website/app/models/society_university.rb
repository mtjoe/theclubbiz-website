class SocietyUniversity < ActiveRecord::Base
	belongs_to :Society
	belongs_to :University
end
