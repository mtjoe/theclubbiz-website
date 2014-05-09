class SocietyCategory < ActiveRecord::Base
	belongs_to :Society
	belongs_to :Category
end
